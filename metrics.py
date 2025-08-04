import torch
import numpy as np
import cv2

def _threshold(x, threshold=None):
    if threshold is not None:
        return (x > threshold).type(x.dtype)
    else:
        return x


def _list_tensor(x, y):
    m = torch.nn.Sigmoid()
    if type(x) is list:
        x = torch.tensor(np.array(x))
        y = torch.tensor(np.array(y))
        if x.min() < 0:
            x = m(x)
    else:
        x, y = x, y
        if x.min() < 0:
            x = m(x)
    return x, y


def iou(pr, gt, eps=1e-7, threshold = 0.5):
    pr_, gt_ = _list_tensor(pr, gt)
    pr_ = _threshold(pr_, threshold=threshold)
    gt_ = _threshold(gt_, threshold=threshold)
    intersection = torch.sum(gt_ * pr_,dim=[1,2,3])
    union = torch.sum(gt_,dim=[1,2,3]) + torch.sum(pr_,dim=[1,2,3]) - intersection
    return ((intersection + eps) / (union + eps)).cpu().numpy()

def dice(pr, gt, eps=1e-7, threshold = 0.5):
    pr_, gt_ = _list_tensor(pr, gt)
    pr_ = _threshold(pr_, threshold=threshold)
    gt_ = _threshold(gt_, threshold=threshold)
    intersection = torch.sum(gt_ * pr_,dim=[1,2,3])
    union = torch.sum(gt_,dim=[1,2,3]) + torch.sum(pr_,dim=[1,2,3])
    return ((2. * intersection +eps) / (union + eps)).cpu().numpy()

def dice_with_mask(pr, gt, ignore_mask, eps=1e-7, threshold=0.5):
    """
    ignore_mask: shape=(B, 1, H, W) or (B, H, W)
    """
    pr_, gt_ = _list_tensor(pr, gt)
    pr_ = _threshold(pr_, threshold=threshold)
    gt_ = _threshold(gt_, threshold=threshold)
    # ignore_mask
    valid = (ignore_mask == 0)
    intersection = torch.sum(gt_ * pr_ * valid, dim=[1,2,3])
    union = torch.sum((gt_ + pr_) * valid, dim=[1,2,3])
    return ((2. * intersection + eps) / (union + eps)).cpu().numpy()


def SegMetrics(pred, label, metrics, ignore_mask=None):
    metric_list = []  
    pred, label = _list_tensor(pred, label)
    if isinstance(metrics, str):
        metrics = [metrics, ]
    for i, metric in enumerate(metrics):
        if not isinstance(metric, str):
            continue
        elif metric == 'iou':
            metric_list.append(np.mean(iou(pred, label)))
        elif metric == 'dice':
            metric_list.append(np.mean(dice(pred, label)))
        elif metric == 'dice_main_only':
            if ignore_mask is None:
                metric_list.append(0.0)
            else:
                metric_list.append(np.mean(dice_with_mask(pred, label, label-ignore_mask)))
        elif metric == 'dice_fine_only':
            if ignore_mask is None:
                metric_list.append(0.0)
            else:
                metric_list.append(np.mean(dice_with_mask(pred, label, ignore_mask)))
        elif metric == 'dice_normalized':
            if ignore_mask is None:
                metric_list.append(0.0)
            else:
                # ignore_mask: main artery main
                main_ignore_mask = label-ignore_mask
                fine_ignore_mask = ignore_mask
                save_mask(main_ignore_mask, 'mask_main.png')
                save_mask(fine_ignore_mask, 'mask_fine.png')
                main_weight = (main_ignore_mask.sum() / label.sum()).cpu().numpy()
                fine_weight = (fine_ignore_mask.sum() / label.sum()).cpu().numpy()
                main_dice = np.mean(dice_with_mask(pred, label, main_ignore_mask)) * main_weight
                fine_dice = np.mean(dice_with_mask(pred, label, fine_ignore_mask)) * fine_weight
                metric_list.append(main_dice + fine_dice)
        else:
            raise ValueError('metric %s not recognized' % metric)
    if pred is not None:
        metric = np.array(metric_list)
    else:
        raise ValueError('metric mistakes in calculations')
    return metric

def save_mask(mask, save_path='mask.png'):
    mask = mask.cpu().numpy().squeeze()
    cv2.imwrite(save_path, mask*255)
