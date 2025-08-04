from segment_anything import sam_model_registry, SamPredictor
import torch.nn as nn
import torch
import argparse
import os,sys
from torch import optim
from torch.utils.data import DataLoader
from DataLoader import TrainingDataset, stack_dict_batched
from DataLoader import TestingDataset
from DataLoader import AugmentedDataset
from utils import FocalDiceloss_IoULoss, generate_point, save_masks, save_overlapped_mask
from utils import get_logger, setting_prompt_none, set_random_seed
from metrics import SegMetrics
import time
from tqdm import tqdm
import numpy as np
import datetime
from torch.nn import functional as F
#from apex import amp

import logging
import datetime
import cv2
import random
import csv
import json

from torch.utils.tensorboard import SummaryWriter


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--work_dir", type=str, default="work_dir", help="work dir")
    parser.add_argument("--run_name", type=str, default="sam-med2d", help="run model name")
    parser.add_argument("--epochs", type=int, default=50, help="number of epochs")
    parser.add_argument("--batch_size", type=int, default=32, help="train batch size")
    parser.add_argument("--image_size", type=int, default=256, help="image_size")
    parser.add_argument("--mask_num", type=int, default=1, help="get mask number")
    parser.add_argument("--data_path", type=str, default="data_demo", help="train data path") 
    parser.add_argument("--metrics", nargs='+', default=['dice', 'dice_main_only', 'dice_fine_only'], help="metrics")
    parser.add_argument('--device', type=str, default='cuda')
    parser.add_argument("--lr", type=float, default=1e-4, help="learning rate")
    parser.add_argument("--resume", type=str, default=None, help="load resume") 
    parser.add_argument("--model_type", type=str, default="vit_b", help="sam model_type")
    parser.add_argument("--sam_checkpoint", type=str, default="pretrain_model/sam-med2d_b.pth", help="sam checkpoint")
    parser.add_argument("--iter_point", type=int, default=8, help="point iterations")
    parser.add_argument('--lr_scheduler', type=str, default=None, help='lr scheduler')
    parser.add_argument("--point_list", type=list, default=[1, 3, 5, 9], help="point_list")
    parser.add_argument("--multimask", type=bool, default=True, help="ouput multimask")
    parser.add_argument("--encoder_adapter", type=bool, default=True, help="use adapter")
    parser.add_argument("--use_amp", type=bool, default=False, help="use amp")

    # For testing
    parser.add_argument("--test_interval", type=int, default=1, help="test interval") 
    parser.add_argument("--test_data_path", type=str, default="data/FineARCADE", help="test data path") 
    parser.add_argument("--test_boxes_prompt", type=bool, default=False, help="use boxes prompt")
    parser.add_argument("--test_point_num", type=int, default=1, help="point num")
    parser.add_argument("--test_iter_point", type=int, default=1, help="iter num") 
    parser.add_argument("--test_prompt_path", type=str, default=None, help="fix prompt path")
    parser.add_argument("--test_save_pred", action='store_true', help="save result")

    # For background augmentation
    parser.add_argument("--random_seed", type=int, default=2, help="random seed for experiments") 
    parser.add_argument("--not_augments", action='store_true', help="use background")
    parser.add_argument("--debug", action='store_true', help="debugging mode for augmentation")
    parser.add_argument("--self_augmented", action='store_true', help="use self augmented background")

    ## background options
    parser.add_argument("--bg_data_path", type=str, default="data/ARCADE", help="background data path") 
    ## foreground options
    parser.add_argument("--fg_data_path", type=str, default="data/ARCADE",  help="foreground data path") 
    parser.add_argument("--fg_min_size", type=float, default=1, help="minimum foreground size")
    parser.add_argument("--fg_max_size", type=float, default=1, help="maximum foreground size")

    parser.add_argument("--fg_num", type=int, default=1, help="foreground number")
    parser.add_argument("--fg_overlap", action='store_true', help="overlap fg to bg mask")
    parser.add_argument("--fg_color", action='store_true', help="fg color select")
    parser.add_argument("--fg_color_sigma", type=float, default=2, help="fg color select")


    args = parser.parse_args()
    if args.test_iter_point > 1:
        args.test_point_num = 1

    if args.resume is not None:
        args.sam_checkpoint = None
    
    args.augments = not args.not_augments
    if args.self_augmented:
        assert args.bg_data_path == args.fg_data_path, "For self-augmented background, bg_data_path and fg_data_path should be the same."
        assert args.fg_max_size != -1 or args.fg_max_size > 0.5, "For self-augmented background, fg_max_size should be set to a valid value."

    return args


def to_device(batch_input, device):
    device_input = {}
    for key, value in batch_input.items():
        if value is not None:
            if key=='image' or key=='label':
                device_input[key] = value.float().to(device)
            elif type(value) is list or type(value) is torch.Size:
                device_input[key] = value
            else:
                device_input[key] = value.to(device)
        else:
            device_input[key] = value
    return device_input


def postprocess_masks(low_res_masks, image_size, original_size):
    ori_h, ori_w = original_size
    masks = F.interpolate(
        low_res_masks,
        (image_size, image_size),
        mode="bilinear",
        align_corners=False,
        )
    
    if ori_h < image_size and ori_w < image_size:
        top = torch.div((image_size - ori_h), 2, rounding_mode='trunc')  #(image_size - ori_h) // 2
        left = torch.div((image_size - ori_w), 2, rounding_mode='trunc') #(image_size - ori_w) // 2
        masks = masks[..., top : ori_h + top, left : ori_w + left]
        pad = (top, left)
    else:
        masks = F.interpolate(masks, original_size, mode="bilinear", align_corners=False)
        pad = None 
    return masks, pad


def prompt_and_decoder(args, batched_input, model, image_embeddings, decoder_iter=False, test=False):
    if  batched_input["point_coords"] is not None:
        points = (batched_input["point_coords"], batched_input["point_labels"])
    else:
        points = None

    if test: 
        with torch.no_grad():
            sparse_embeddings, dense_embeddings = model.prompt_encoder(
                points=points,
                boxes=batched_input.get("boxes", None),
                masks=batched_input.get("mask_inputs", None),
            )

            low_res_masks, iou_predictions = model.mask_decoder(
                image_embeddings = image_embeddings,
                image_pe = model.prompt_encoder.get_dense_pe(),
                sparse_prompt_embeddings=sparse_embeddings,
                dense_prompt_embeddings=dense_embeddings,
                multimask_output=args.multimask,
            )
    else:
        if decoder_iter:
            with torch.no_grad():
                sparse_embeddings, dense_embeddings = model.prompt_encoder(
                    points=points,
                    boxes=batched_input.get("boxes", None),
                    masks=batched_input.get("mask_inputs", None),
                )

        else:
            sparse_embeddings, dense_embeddings = model.prompt_encoder(
                points=points,
                boxes=batched_input.get("boxes", None),
                masks=batched_input.get("mask_inputs", None),
            )

        low_res_masks, iou_predictions = model.mask_decoder(
            image_embeddings = image_embeddings,
            image_pe = model.prompt_encoder.get_dense_pe(),
            sparse_prompt_embeddings=sparse_embeddings,
            dense_prompt_embeddings=dense_embeddings,
            multimask_output=args.multimask,
        )
    
    if args.multimask:
        max_values, max_indexs = torch.max(iou_predictions, dim=1)
        max_values = max_values.unsqueeze(1)
        iou_predictions = max_values
        low_res = []
        for i, idx in enumerate(max_indexs):
            low_res.append(low_res_masks[i:i+1, idx])
        low_res_masks = torch.stack(low_res, 0)
    masks = F.interpolate(low_res_masks,(args.image_size, args.image_size), mode="bilinear", align_corners=False,)
    return masks, low_res_masks, iou_predictions


def is_not_saved(save_path, mask_name):
    masks_path = os.path.join(save_path, f"{mask_name}")
    if os.path.exists(masks_path):
        return False
    else:
        return True

def train_one_epoch(args, model, optimizer, train_loader, epoch, criterion, writer=None):
    train_loader = tqdm(train_loader)
    train_losses = []
    train_iter_metrics = [0] * len(args.metrics)
    for batch, batched_input in enumerate(train_loader):
        batched_input = stack_dict_batched(batched_input)
        batched_input = to_device(batched_input, args.device)
        
        if random.random() > 0.5:
            batched_input["point_coords"] = None
            flag = "boxes"
        else:
            batched_input["boxes"] = None
            flag = "point"

        for n, value in model.image_encoder.named_parameters():
            if "Adapter" in n:
                value.requires_grad = True
            else:
                value.requires_grad = False

        if args.use_amp:
            labels = batched_input["label"].half()
            image_embeddings = model.image_encoder(batched_input["image"].half())

            B, _, _, _ = image_embeddings.shape
            image_embeddings_repeat = []
            for i in range(B):
                image_embed = image_embeddings[i]
                image_embed = image_embed.repeat(args.mask_num, 1, 1, 1)
                image_embeddings_repeat.append(image_embed)
            image_embeddings = torch.cat(image_embeddings_repeat, dim=0)

            masks, low_res_masks, iou_predictions = prompt_and_decoder(args, batched_input, model, image_embeddings, decoder_iter = False)
            loss = criterion(masks, labels, iou_predictions)
            with amp.scale_loss(loss, optimizer) as scaled_loss:
                scaled_loss.backward(retain_graph=False)

        else:
            labels = batched_input["label"]
            image_embeddings = model.image_encoder(batched_input["image"])

            B, _, _, _ = image_embeddings.shape
            image_embeddings_repeat = []
            for i in range(B):
                image_embed = image_embeddings[i]
                image_embed = image_embed.repeat(args.mask_num, 1, 1, 1)
                image_embeddings_repeat.append(image_embed)
            image_embeddings = torch.cat(image_embeddings_repeat, dim=0)

            masks, low_res_masks, iou_predictions = prompt_and_decoder(args, batched_input, model, image_embeddings, decoder_iter = False)
            loss = criterion(masks, labels, iou_predictions)
            loss.backward(retain_graph=False)

        if writer is not None:
            if args.use_amp:
                writer.add_scalar(f'train/loss', loss.item(), epoch*len(train_loader) + batch)
            else:
                writer.add_scalar(f'train/loss', loss.item(), epoch*len(train_loader) + batch)

        optimizer.step()
        optimizer.zero_grad()

        if int(batch+1) % 50 == 0:
            print(f'Epoch: {epoch+2}, Batch: {batch+1}, first {flag} prompt: {SegMetrics(masks, labels, args.metrics)}')

        point_num = random.choice(args.point_list)
        batched_input = generate_point(masks, labels, low_res_masks, batched_input, point_num)
        batched_input = to_device(batched_input, args.device)
    
        image_embeddings = image_embeddings.detach().clone()
        for n, value in model.named_parameters():
            if "image_encoder" in n:
                value.requires_grad = False
            else:
                value.requires_grad = True

        init_mask_num = np.random.randint(1, args.iter_point - 1)
        for iter in range(args.iter_point):
            if iter == init_mask_num or iter == args.iter_point - 1:
                batched_input = setting_prompt_none(batched_input)

            if args.use_amp:
                masks, low_res_masks, iou_predictions = prompt_and_decoder(args, batched_input, model, image_embeddings, decoder_iter=True)
                loss = criterion(masks, labels, iou_predictions)
                with amp.scale_loss(loss,  optimizer) as scaled_loss:
                    scaled_loss.backward(retain_graph=True)
            else:
                masks, low_res_masks, iou_predictions = prompt_and_decoder(args, batched_input, model, image_embeddings, decoder_iter=True)
                loss = criterion(masks, labels, iou_predictions)
                loss.backward(retain_graph=True)
                
            optimizer.step()
            optimizer.zero_grad()
          
            if iter != args.iter_point - 1:
                point_num = random.choice(args.point_list)
                batched_input = generate_point(masks, labels, low_res_masks, batched_input, point_num)
                batched_input = to_device(batched_input, args.device)
       
            if int(batch+1) % 50 == 0:
                if iter == init_mask_num or iter == args.iter_point - 1:
                    print(f'Epoch: {epoch+1}, Batch: {batch+1}, mask prompt: {SegMetrics(masks, labels, args.metrics)}')
                else:
                    print(f'Epoch: {epoch+1}, Batch: {batch+1}, point {point_num} prompt: { SegMetrics(masks, labels, args.metrics)}')

        if int(batch+1) % 200 == 0:
            print(f"epoch:{epoch+1}, iteration:{batch+1}, loss:{loss.item()}")
            # save_path = os.path.join(f"{args.work_dir}/models", args.run_name, f"epoch{epoch+1}_batch{batch+1}_sam.pth")
            # state = {'model': model.state_dict(), 'optimizer': optimizer}
            # torch.save(state, save_path)

        train_losses.append(loss.item())

        gpu_info = {}
        gpu_info['gpu_name'] = args.device 
        train_loader.set_postfix(train_loss=loss.item(), gpu_info=gpu_info)

        train_batch_metrics = SegMetrics(masks, labels, args.metrics)
        train_iter_metrics = [train_iter_metrics[i] + train_batch_metrics[i] for i in range(len(args.metrics))]

    return train_losses, train_iter_metrics



def main(args):
    model = sam_model_registry[args.model_type](args).to(args.device) 
    optimizer = optim.Adam(model.parameters(), lr=args.lr)
    criterion = FocalDiceloss_IoULoss()
    writer = SummaryWriter(os.path.join(args.work_dir, "logs"))

    if args.lr_scheduler:
        scheduler = torch.optim.lr_scheduler.MultiStepLR(optimizer, milestones=[5, 10], gamma = 0.5)
        print('*******Use MultiStepLR')

    if args.resume is not None:
        with open(args.resume, "rb") as f:
            checkpoint = torch.load(f)
            model.load_state_dict(checkpoint['model'])
            optimizer.load_state_dict(checkpoint['optimizer'].state_dict())
            print(f"*******load {args.resume}")

    if args.use_amp:
        model, optimizer = amp.initialize(model, optimizer, opt_level="O1")
        print("*******Mixed precision with Apex")
    else:
        print('*******Do not use mixed precision')

    if args.augments:
        print('*******Use AugmentedDataset with background images')
        train_dataset = AugmentedDataset( 
                                        image_size=args.image_size, mode='train', point_num=1, mask_num=args.mask_num, requires_name = False, 
                                        bg_data_path=args.bg_data_path, 
                                        fg_data_path=args.fg_data_path, 
                                        fg_min_size=args.fg_min_size, 
                                        fg_max_size=args.fg_max_size,
                                        fg_num = args.fg_num,
                                        fg_overlap = args.fg_overlap,
                                        fg_color = args.fg_color,
                                        fg_color_sigma = args.fg_color_sigma,
                                        self_augmented=args.self_augmented,
                                        debug= args.debug)
        train_loader  = DataLoader(train_dataset, batch_size = args.batch_size, shuffle=True, num_workers=4)

        print('*******Save sample images for augmentation')
        train_dataset.debug = True
        exp_name = args.work_dir.split('/')[-1]
        os.makedirs(f"aug_images/{exp_name}", exist_ok=True)

        for i in range(10):
            image, mask = train_dataset[i]
            mask = np.stack([mask]*3, axis=-1)  # Convert mask to 3 channels
            concat_image = np.concatenate([image, mask*255], axis=1)
            cv2.imwrite(f"aug_images/{exp_name}/{i}_image_mask.png", (concat_image).astype(np.uint8))
            print(f"Image {i} saved.")
        
        if args.debug:
            sys.exit(0)
        
        train_dataset.debug = False

    else:
        train_dataset = TrainingDataset(args.data_path, image_size=args.image_size, mode='train', point_num=1, mask_num=args.mask_num, requires_name = False)
        train_loader  = DataLoader(train_dataset, batch_size = args.batch_size, shuffle=True, num_workers=4)
    print('*******Train data:', len(train_dataset))   

    test_dataset = TestingDataset(data_path=args.test_data_path, image_size=args.image_size, mode='test', requires_name=True, point_num=args.test_point_num, return_ori_mask=True, prompt_path=args.test_prompt_path)
    test_loader = DataLoader(dataset=test_dataset, batch_size=1, shuffle=False, num_workers=4)
    print('*******Test data:', len(test_loader))

    loggers = get_logger(os.path.join(args.work_dir, "logs", f"{args.run_name}_{datetime.datetime.now().strftime('%Y%m%d-%H%M.log')}"))

    best_loss = 1e10
    l = len(train_loader)

    test_metrics_list = {}
    for m in args.metrics:
        test_metrics_list[m] = []

    for epoch in range(0, args.epochs):
        model.train()
        train_metrics = {}
        start = time.time()
        os.makedirs(os.path.join(f"{args.work_dir}/models", args.run_name), exist_ok=True)
        train_losses, train_iter_metrics = train_one_epoch(args, model, optimizer, train_loader, epoch, criterion, writer)

        if args.lr_scheduler is not None:
            scheduler.step()

        train_iter_metrics = [metric / l for metric in train_iter_metrics]
        train_metrics = {args.metrics[i]: '{:.4f}'.format(train_iter_metrics[i]) for i in range(len(train_iter_metrics))}

        average_loss = np.mean(train_losses)
        lr = scheduler.get_last_lr()[0] if args.lr_scheduler is not None else args.lr
        loggers.info(f"epoch: {epoch + 1}, lr: {lr}, Train loss: {average_loss:.4f}, metrics: {train_metrics}")
        writer.add_scalar(f'train/{args.metrics[0]}', train_metrics[args.metrics[0]], epoch)
        writer.add_scalar(f'train/{args.metrics[1]}', train_metrics[args.metrics[1]], epoch)

        if average_loss < best_loss:
            best_loss = average_loss
            # save_path = os.path.join(args.work_dir, "models", args.run_name, f"epoch{epoch+1}_sam.pth")
            # state = {'model': model.float().state_dict(), 'optimizer': optimizer}
            # torch.save(state, save_path)
            # if args.use_amp:
            #     model = model.half()

        end = time.time()
        print("Run epoch time: %.2fs" % (end - start))

        # TEST #
        if epoch % args.test_interval == 0 or epoch == args.epochs - 1:
            model.eval()
            test_pbar = tqdm(test_loader)
            test_l = len(test_loader)
            test_metrics = {}
            prompt_dict = {}
            test_iter_metrics = [0] * len(args.metrics)
            test_loss = []
            test_pbar.set_description(f"Test epoch {epoch + 1}")


            for i, batched_input in enumerate(test_pbar):
                batched_input = to_device(batched_input, args.device)
                ori_labels = batched_input["ori_label"]
                if 'ori_ignore_mask' in batched_input:
                    ori_ignore_masks = batched_input['ori_ignore_mask']
                original_size = batched_input["original_size"]
                labels = batched_input["label"]
                img_name = batched_input['name'][0]
                if args.test_prompt_path is None:
                    prompt_dict[img_name] = {
                        "boxes": batched_input["boxes"].squeeze(1).cpu().numpy().tolist(),
                        "point_coords": batched_input["point_coords"].squeeze(1).cpu().numpy().tolist(),
                        "point_labels": batched_input["point_labels"].squeeze(1).cpu().numpy().tolist()
                    }

                with torch.no_grad():
                    image_embeddings = model.image_encoder(batched_input["image"])

                if args.test_boxes_prompt:
                    save_path = os.path.join(args.work_dir, args.run_name, "boxes_prompt")
                    batched_input["point_coords"], batched_input["point_labels"] = None, None
                    masks, low_res_masks, iou_predictions = prompt_and_decoder(args, batched_input, model, image_embeddings, test=True)
                    points_show = None

                else:
                    save_path = os.path.join(f"{args.work_dir}", args.run_name, f"iter{args.test_iter_point if args.test_iter_point > 1 else args.test_point_num}_prompt")
                    batched_input["boxes"] = None
                    point_coords, point_labels = [batched_input["point_coords"]], [batched_input["point_labels"]]

                    for iter in range(args.test_iter_point):
                        masks, low_res_masks, iou_predictions = prompt_and_decoder(args, batched_input, model, image_embeddings, test=True)
                        if iter != args.test_iter_point-1:
                            batched_input = generate_point(masks, labels, low_res_masks, batched_input, args.test_point_num)
                            batched_input = to_device(batched_input, args.device)
                            point_coords.append(batched_input["point_coords"])
                            point_labels.append(batched_input["point_labels"])
                            batched_input["point_coords"] = torch.concat(point_coords,dim=1)
                            batched_input["point_labels"] = torch.concat(point_labels, dim=1)

                        points_show = (torch.concat(point_coords, dim=1), torch.concat(point_labels, dim=1))

                masks, pad = postprocess_masks(low_res_masks, args.image_size, original_size)

                loss = criterion(masks, ori_labels, iou_predictions)
                test_loss.append(loss.item())

                test_batch_metrics = SegMetrics(masks, ori_labels, args.metrics, ori_ignore_masks)
                test_batch_metrics = [float('{:.4f}'.format(metric)) for metric in test_batch_metrics]

                # if (args.test_save_pred) and (epoch % 10 == 0) and (i < 5):
                if (args.test_save_pred):
                    np_masks = torch.sigmoid(masks).squeeze().cpu().numpy()
                    np_masks[np_masks > 0.5] = int(1)
                    np_masks[np_masks <= 0.5] = int(0)
                    gt      = batched_input['ori_label'].squeeze().cpu().numpy()
                    main_gt = batched_input['ori_ignore_mask'].squeeze().cpu().numpy()
                    save_path = os.path.join(f"{args.work_dir}", "pred_results", f"{img_name.split('.')[-2]}_epc{epoch:02d}")
                    for m in range(len(test_batch_metrics)):
                        save_path = f'{save_path}_{test_batch_metrics[m]:.4f}'
                    save_path = f'{save_path}.pdf'

                    save_overlapped_mask(
                        image         = batched_input['ori_image'].cpu().numpy()[0],
                        mask          = np_masks,
                        save_path     = save_path,
                        image_name    = img_name,
                        gt            = gt,
                        main_gt       = main_gt,
                        image_size    = args.image_size,
                        original_size = original_size,
                        points        = points_show,
                        )
                    # save_masks(masks, save_path, img_name, args.image_size, original_size, pad, batched_input.get("boxes", None), points_show, visual_prompt=True)

                for j in range(len(args.metrics)):
                    test_iter_metrics[j] += test_batch_metrics[j]

            test_iter_metrics = [metric / test_l for metric in test_iter_metrics]
            test_metrics = {args.metrics[i]: '{:.4f}'.format(test_iter_metrics[i]) for i in range(len(test_iter_metrics))}

            average_loss = np.mean(test_loss)
            if args.test_prompt_path is None:
                with open(os.path.join(args.work_dir,f'{args.image_size}_prompt.json'), 'w') as f:
                    json.dump(prompt_dict, f, indent=2)
            print(f"Test loss: {average_loss:.4f}, metrics: {test_metrics}")

            for metrics in args.metrics:
                writer.add_scalar(f'test/{metrics}', test_metrics[metrics], epoch)
                test_metrics_list[metrics].append(test_metrics[metrics])
        
    for metrics in args.metrics:
        writer.add_scalar(f'final_test/best_{metrics}', np.array(test_metrics_list[metrics], dtype=np.float64).max(), 0)
        writer.add_scalar(f'final_test/last_{metrics}', np.array(test_metrics_list[metrics][-1], dtype=np.float64), 0)


if __name__ == '__main__':
    args = parse_args()
    print(f"*******Random seed: {args.random_seed}")
    set_random_seed(args.random_seed)
    main(args)


