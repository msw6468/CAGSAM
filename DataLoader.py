
import os
from torch.utils.data import Dataset
import albumentations as A
from albumentations.pytorch import ToTensorV2
import cv2
import torch
import numpy as np
from torch.nn import functional as F
from torch.utils.data import DataLoader
from tqdm import tqdm
from utils import train_transforms, get_boxes_from_mask, init_point_sampling
import json
import random

from glob import glob
import pickle


class TestingDataset(Dataset):
    def __init__(self, data_path, image_size=256, mode='test', requires_name=True, point_num=1, return_ori_mask=True, prompt_path=None):
        """
        Initializes a TestingDataset object.
        Args:
            data_path (str): The path to the data.
            image_size (int, optional): The size of the image. Defaults to 256.
            mode (str, optional): The mode of the dataset. Defaults to 'test'.
            requires_name (bool, optional): Indicates whether the dataset requires image names. Defaults to True.
            point_num (int, optional): The number of points to retrieve. Defaults to 1.
            return_ori_mask (bool, optional): Indicates whether to return the original mask. Defaults to True.
            prompt_path (str, optional): The path to the prompt file. Defaults to None.
        """
        self.image_size = image_size
        self.return_ori_mask = return_ori_mask
        self.prompt_path = prompt_path
        self.prompt_list = {} if prompt_path is None else json.load(open(prompt_path, "r"))
        self.requires_name = requires_name
        self.point_num = point_num

        json_file = open(os.path.join(data_path, f'label2image_{mode}.json'), "r")
        dataset = json.load(json_file)
    
        self.image_paths = list(dataset.values())
        self.label_paths = list(dataset.keys())

        self.pixel_mean = [123.675, 116.28, 103.53]
        self.pixel_std = [58.395, 57.12, 57.375]
    
    def __getitem__(self, index):
        """
        Retrieves and preprocesses an item from the dataset.
        Args:
            index (int): The index of the item to retrieve.
        Returns:
            dict: A dictionary containing the preprocessed image and associated information.
        """
        image_input = {}
        try:
            image = cv2.imread(self.image_paths[index])
            ori_image = image.copy()
            image = (image - self.pixel_mean) / self.pixel_std
        except:
            print(self.image_paths[index])

        mask_path = self.label_paths[index]
        ori_np_mask = cv2.imread(mask_path, 0)
        if ori_np_mask.max() == 255:
            ori_np_mask = ori_np_mask / 255

        assert np.array_equal(ori_np_mask, ori_np_mask.astype(bool)), f"Mask should only contain binary values 0 and 1. {self.label_paths[index]}"

        h, w = ori_np_mask.shape
        ori_mask = torch.tensor(ori_np_mask).unsqueeze(0)


        transforms = train_transforms(self.image_size, h, w)
        augments = transforms(image=image, mask=ori_np_mask)
        image, mask = augments['image'], augments['mask'].to(torch.int64)

        if self.prompt_path is None:
            boxes = get_boxes_from_mask(mask, max_pixel = 0)
            point_coords, point_labels = init_point_sampling(mask, self.point_num)
        else:
            prompt_key = mask_path.split('/')[-1]
            boxes = torch.as_tensor(self.prompt_list[prompt_key]["boxes"], dtype=torch.float)
            point_coords = torch.as_tensor(self.prompt_list[prompt_key]["point_coords"], dtype=torch.float)
            point_labels = torch.as_tensor(self.prompt_list[prompt_key]["point_labels"], dtype=torch.int)

        image_input["image"] = image
        image_input["label"] = mask.unsqueeze(0)
        image_input["point_coords"] = point_coords
        image_input["point_labels"] = point_labels
        image_input["boxes"] = boxes
        image_input["original_size"] = (h, w)
        image_input["label_path"] = '/'.join(mask_path.split('/')[:-1])

        ### add ignore mask and show results
        image_input["ori_image"] = ori_image
        ignore_mask_path = self.label_paths[index].replace('masks', 'main_masks')
        if os.path.isfile(ignore_mask_path):
            ori_ignore_np_mask = cv2.imread(ignore_mask_path, 0)
            if ori_ignore_np_mask.max() == 255:
                ori_ignore_np_mask = ori_ignore_np_mask / 255
            ori_ignore_mask = torch.tensor(ori_ignore_np_mask).unsqueeze(0)
            image_input["ori_ignore_mask"] = ori_ignore_mask

        if self.return_ori_mask:
            image_input["ori_label"] = ori_mask

        image_name = self.label_paths[index].split('/')[-1]
        if self.requires_name:
            image_input["name"] = image_name
            return image_input
        else:
            return image_input

    def __len__(self):
        return len(self.label_paths)


class TrainingDataset(Dataset):
    def __init__(self, data_dir, image_size=256, mode='train', requires_name=True, point_num=1, mask_num=5):
        """
        Initializes a training dataset.
        Args:
            data_dir (str): Directory containing the dataset.
            image_size (int, optional): Desired size for the input images. Defaults to 256.
            mode (str, optional): Mode of the dataset. Defaults to 'train'.
            requires_name (bool, optional): Indicates whether to include image names in the output. Defaults to True.
            num_points (int, optional): Number of points to sample. Defaults to 1.
            num_masks (int, optional): Number of masks to sample. Defaults to 5.
        """
        self.image_size = image_size
        self.requires_name = requires_name
        self.point_num = point_num
        self.mask_num = mask_num
        self.pixel_mean = [123.675, 116.28, 103.53]
        self.pixel_std = [58.395, 57.12, 57.375]

        dataset = json.load(open(os.path.join(data_dir, f'image2label_{mode}.json'), "r"))
        self.image_paths = list(dataset.keys())
        self.label_paths = list(dataset.values())
    
    def __getitem__(self, index):
        """
        Returns a sample from the dataset.
        Args:
            index (int): Index of the sample.
        Returns:
            dict: A dictionary containing the sample data.
        """

        image_input = {}
        try:
            image = cv2.imread(self.image_paths[index])
            image = (image - self.pixel_mean) / self.pixel_std
        except:
            print(self.image_paths[index])

        h, w, _ = image.shape
        transforms = train_transforms(self.image_size, h, w)
    
        masks_list = []
        boxes_list = []
        point_coords_list, point_labels_list = [], []
        mask_path = random.choices(self.label_paths[index], k=self.mask_num)
        for m in mask_path:
            pre_mask = cv2.imread(m, 0)
            if pre_mask.max() == 255:
                pre_mask = pre_mask / 255

            augments = transforms(image=image, mask=pre_mask)
            image_tensor, mask_tensor = augments['image'], augments['mask'].to(torch.int64)

            boxes = get_boxes_from_mask(mask_tensor)
            point_coords, point_label = init_point_sampling(mask_tensor, self.point_num)

            masks_list.append(mask_tensor)
            boxes_list.append(boxes)
            point_coords_list.append(point_coords)
            point_labels_list.append(point_label)

        mask = torch.stack(masks_list, dim=0)
        boxes = torch.stack(boxes_list, dim=0)
        point_coords = torch.stack(point_coords_list, dim=0)
        point_labels = torch.stack(point_labels_list, dim=0)

        image_input["image"] = image_tensor.unsqueeze(0)
        image_input["label"] = mask.unsqueeze(1)
        image_input["boxes"] = boxes
        image_input["point_coords"] = point_coords
        image_input["point_labels"] = point_labels

        image_name = self.image_paths[index].split('/')[-1]
        if self.requires_name:
            image_input["name"] = image_name
            return image_input
        else:
            return image_input
    def __len__(self):
        return len(self.image_paths)


def stack_dict_batched(batched_input):
    out_dict = {}
    for k,v in batched_input.items():
        if isinstance(v, list):
            out_dict[k] = v
        else:
            out_dict[k] = v.reshape(-1, *v.shape[2:])
    return out_dict


if __name__ == "__main__":
    train_dataset = TrainingDataset("data_demo", image_size=256, mode='train', requires_name=True, point_num=1, mask_num=5)
    print("Dataset:", len(train_dataset))
    train_batch_sampler = DataLoader(dataset=train_dataset, batch_size=2, shuffle=True, num_workers=4)
    for i, batched_image in enumerate(tqdm(train_batch_sampler)):
        batched_image = stack_dict_batched(batched_image)
        print(batched_image["image"].shape, batched_image["label"].shape)


class AugmentedDataset(TrainingDataset):
    """Augmented dataset that includes background images for training."""
    def __init__(self, 
                image_size=256, mode='train', 
                requires_name=True, 
                point_num=1, mask_num=5, 
                bg_data_path ='data/ARCADE',
                fg_data_path ='data/ARCADE',
                fg_min_size=1, fg_max_size=1,
                fg_num=1,
                fg_overlap=False,
                fg_color=False,
                fg_color_sigma=2,
                self_augmented=False,
                debug = False,
                ):
        """
        Initializes a training dataset
        Args:
            data_dir (str): Directory containing the dataset.
            image_size (int, optional): Desired size for the input images. Defaults to 256.
            mode (str, optional): Mode of the dataset. Defaults to 'train'.
            requires_name (bool, optional): Indicates whether to include image names in the output. Defaults to True.
            num_points (int, optional): Number of points to sample. Defaults to 1.
            num_masks (int, optional): Number of masks to sample. Defaults to 5.

        """
        super().__init__(bg_data_path, image_size, mode, requires_name, point_num, mask_num)
        self.debug = debug
        self.fg_data_path = fg_data_path
        self.fg_dataset   = json.load(open(os.path.join(fg_data_path, f'image2label_{mode}.json'), "r"))

        # augmetnation options
        self.self_augmented = self_augmented
        self.fg_min_size    = fg_min_size
        self.fg_max_size    = fg_max_size
        self.fg_num         = fg_num
        self.fg_overlap     = fg_overlap
        self.fg_color       = fg_color
        self.fg_color_sigma = fg_color_sigma

        self.fg_path_list = list(self.fg_dataset)
        self.fg_path2idx = {}

        fg_mask_color_list = []
        for i, fg_path in enumerate(self.fg_path_list):
            self.fg_path2idx[fg_path] = i
            fg_image, fg_mask = self.get_image_and_mask(fg_path, self.fg_dataset[fg_path][0])
            fg_mask_color = self.get_mask_color(fg_image, fg_mask)
            fg_mask_color_list.append(fg_mask_color)
        self.fg_mask_colors = np.array(fg_mask_color_list)
            
    def get_image_and_mask(self, image_path, mask_path):
        image = cv2.imread(image_path)
        image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        image = cv2.merge([image, image, image])
        mask_path = mask_path 
        mask = cv2.imread(mask_path, 0)
        if mask.max() == 255:
            mask = mask/ 255
        return image, mask
    
    def get_mask_color(self, image, mask):
        mask_3ch = np.stack([mask]*3, axis=-1)
        mask_color = (image * mask_3ch).sum() / mask_3ch.sum() 
        return mask_color

    def __getitem__(self, index):
        """
        Returns a sample from the dataset.
        Args:
            index (int): Index of the sample.
        Returns:
            dict: A dictionary containing the sample data.
        """

        image_input = {}
        try:
            bg_image, bg_mask = self.get_image_and_mask(self.image_paths[index], self.label_paths[index][0])
            h_offset = w_offset = 0
            # bg_image = (512, 512, 3)
            # bg_mask  = (512, 512)

            #######################################
            # overlap the image on the background #
            #######################################
            count = 0
            iter = 0
            while count < self.fg_num:
                ## Select fg image
                if self.self_augmented:
                    fg_image = bg_image.copy()
                    fg_mask  = bg_mask.copy()
                    continue
                elif self.fg_color:
                    bg_mask_color = self.get_mask_color(bg_image, bg_mask)
                    dist = np.abs(bg_mask_color-self.fg_mask_colors)
                    weights = np.exp(-(dist ** 2) / self.fg_color_sigma)
                    if self.image_paths[index] in self.fg_path2idx:
                        weights[self.fg_path2idx[self.image_paths[index]]] = 0
                    prob = weights / weights.sum()
                    fg_image_path_index = np.random.choice(np.arange(len(self.fg_mask_colors)), p=prob)
                    fg_image_path = self.fg_path_list[fg_image_path_index]
                    fg_mask_path = self.fg_dataset[fg_image_path][0]
                    fg_image, fg_mask = self.get_image_and_mask(fg_image_path, fg_mask_path)

                else:
                    fg_image_path = random.choice(list(self.fg_dataset))
                    fg_mask_path = self.fg_dataset[fg_image_path][0]
                    fg_image, fg_mask = self.get_image_and_mask(fg_image_path, fg_mask_path)

                ## Resize the foreground image to match the background size
                h, w, _ = bg_image.shape
                fg_image    = cv2.resize(fg_image, (w, h), interpolation=cv2.INTER_LINEAR)   # (h, w, 3)
                fg_mask     = cv2.resize(fg_mask,  (w, h), interpolation=cv2.INTER_NEAREST)  # (h, w)
                fg_mask_3ch = np.stack([fg_mask]*3, axis=-1)

                ## set the foreground image size/location
                if self.fg_min_size < 1 :
                    cur_fg_min_size = np.linspace(self.fg_min_size, self.fg_max_size, self.fg_num+1)[count]
                    cur_fg_max_size = np.linspace(self.fg_min_size, self.fg_max_size, self.fg_num+1)[count+1]
                    # Randomly select a size for the foreground
                    fg_h = int(h * random.uniform(cur_fg_min_size, cur_fg_max_size))
                    fg_w = int(w * random.uniform(cur_fg_min_size, cur_fg_max_size))
                    fg_image = cv2.resize(fg_image, (fg_w, fg_h), interpolation=cv2.INTER_LINEAR)
                    fg_mask_3ch = cv2.resize(fg_mask_3ch, (fg_w, fg_h), interpolation=cv2.INTER_NEAREST)    

                    # fg moves around center only! remove outside of masks
                    ys, xs = np.where(fg_mask_3ch[:,:,0] > 0)
                    top, bottom = ys.min(), ys.max()
                    left, right = xs.min(), xs.max()
                    fg_image = fg_image[top:bottom+1, left:right+1]
                    fg_mask_3ch = fg_mask_3ch[top:bottom+1, left:right+1]
                    # Update fg_h, fg_w
                    fg_h = bottom-top+1
                    fg_w = right-left+1
                    h_offset = random.randint(0, h - fg_h)
                    w_offset = random.randint(0, w - fg_w)

                    ## generate image/mask for overlap
                    final_fg_image = np.zeros((h, w, 3), dtype=np.uint8)
                    final_fg_mask_3ch = np.zeros((h, w, 3), dtype=np.uint8)

                    final_fg_image[h_offset:h_offset+fg_h, w_offset:w_offset+fg_w] = fg_image
                    final_fg_mask_3ch[h_offset:h_offset+fg_h, w_offset:w_offset+fg_w] = fg_mask_3ch
                
                else:
                    final_fg_image = fg_image
                    final_fg_mask_3ch = fg_mask_3ch

                if self.fg_overlap and (final_fg_mask_3ch[:,:,0] * bg_mask).sum() == 0:
                    iter += 1
                    if iter <= 100:
                        # print(f"bg_index: {index}, iter: {iter}", self.image_paths[index], fg_image_path, prob.max())
                        # print(fg_mask.sum(), (final_fg_mask_3ch[:,:,0] * bg_mask).sum())
                        # print((final_fg_mask_3ch[:,:,0] * bg_mask).sum())
                        # cv2.imwrite(f'fg_mask_index{index}_{iter}.png', final_fg_mask_3ch[:,:,0]*255)
                        # cv2.imwrite(f'bg_mask_index{index}_{iter}.png', bg_mask*255)
                        # cv2.imwrite(f'with_mask_index{index}_{iter}.png', final_fg_mask_3ch[:,:,0]*255 + bg_mask*120)
                        # import sys
                        # sys.exit()
                        continue

                iter = 0

                fg_image = final_fg_image * final_fg_mask_3ch  # Apply the mask to the foreground
                fg_image = fg_image.astype(np.int32)  # Convert to int32 for pixel

                valid_bg_mask_3ch = 1 - final_fg_mask_3ch
                bg_image    = bg_image * valid_bg_mask_3ch

                ## Combine foreground and background
                bg_image = fg_image + bg_image
                bg_mask = final_fg_mask_3ch[:, :, 0] + bg_mask  # Use the first channel of the mask
                count += 1
            
            image, mask = bg_image, bg_mask
            
            ## save image for debugging
            if self.debug:
                return image, mask

            image = (image - self.pixel_mean) / self.pixel_std
            mask = [mask]

        except Exception as e:
            # print(self.image_paths[index], fg_image_path, e)
            print(e)
            from IPython import embed; embed(colors='neutral')  # XXX DEBUG  # yapf: disable

        h, w, _ = image.shape
        transforms = train_transforms(self.image_size, h, w)
    
        masks_list = []
        boxes_list = []
        point_coords_list, point_labels_list = [], []
        for m in mask:
            augments = transforms(image=image, mask=m)
            image_tensor, mask_tensor = augments['image'], augments['mask'].to(torch.int64)

            boxes = get_boxes_from_mask(mask_tensor)
            point_coords, point_label = init_point_sampling(mask_tensor, self.point_num)

            masks_list.append(mask_tensor)
            boxes_list.append(boxes)
            point_coords_list.append(point_coords)
            point_labels_list.append(point_label)

        mask = torch.stack(masks_list, dim=0)
        boxes = torch.stack(boxes_list, dim=0)
        point_coords = torch.stack(point_coords_list, dim=0)
        point_labels = torch.stack(point_labels_list, dim=0)

        image_input["image"] = image_tensor.unsqueeze(0)
        image_input["label"] = mask.unsqueeze(1)
        image_input["boxes"] = boxes
        image_input["point_coords"] = point_coords
        image_input["point_labels"] = point_labels

        image_name = self.image_paths[index].split('/')[-1]
        if self.requires_name:
            image_input["name"] = image_name
            return image_input
        else:
            return image_input
    def __len__(self):
        return len(self.image_paths)