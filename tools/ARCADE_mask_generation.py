# pip install numpy pandas colorful prettytable tqdm pudb ipython
# --- default packages --- #
import os, sys
from glob import glob
import argparse

# for visualization
import colorful
from pprint import pprint
from prettytable import PrettyTable
from tqdm import tqdm

# for data and models
import numpy as np
import pandas as pd

import json, pickle
import cv2
from pycocotools import mask as maskUtils
from PIL import Image
# --- default packages --- #

# --- customized packages --- #
# --- customized packages --- #

def segmentation_to_mask(segmentation, image_shape):
    """
    segmentation: polygon(list), RLE dict, or RLE list
    image_shape: (height, width)
    return: mask (np.uint8, 0/1)
    """
    mask = np.zeros(image_shape, dtype=np.uint8)
    if isinstance(segmentation, dict) and 'counts' in segmentation and 'size' in segmentation:
        # RLE dict (COCO style)
        rle = segmentation
        if isinstance(rle['counts'], list):
            rle = maskUtils.frPyObjects(rle, rle['size'][0], rle['size'][1])
        mask = maskUtils.decode(rle)
    elif isinstance(segmentation, list):
        # polygon (list of lists or flat list)
        if len(segmentation) == 0:
            return mask
        # COCO polygon: list of list or flat list
        if isinstance(segmentation[0], (list, tuple, np.ndarray)):
            for poly in segmentation:
                pts = np.array(poly, dtype=np.float32)
                if pts.size < 6 or pts.size % 2 != 0:
                    continue
                pts = pts.reshape(-1, 2).astype(np.int32)
                cv2.fillPoly(mask, [pts], color=1)
        else:
            # flat list
            pts = np.array(segmentation, dtype=np.float32)
            if pts.size >= 6 and pts.size % 2 == 0:
                pts = pts.reshape(-1, 2).astype(np.int32)
                cv2.fillPoly(mask, [pts], color=1)
    return mask.astype(np.uint8)

def coco_json_to_mask(json_filename, save_dir):
    annotations = json.load(open(json_filename, 'r'))
    category_id2filename = {}
    for category_info in annotations['categories']:
        category_id = category_info['id']
        category_name = category_info['name']
        category_id2filename[category_id] = category_name

    for image_info in tqdm(annotations['images']):
        image_id = image_info['id']
        image_filename = image_info['file_name']
        mask_save_path = os.path.join(save_dir, image_filename)
        image_w = image_info['width']
        image_h = image_info['height']
        mask = np.zeros((image_h, image_w))
        for annotation in annotations['annotations']:
            if annotation['image_id'] == image_id:
                if category_id2filename[annotation['category_id']] == 'stenosis':
                    # ignore stenosis
                    continue
                mask += segmentation_to_mask(annotation['segmentation'], mask.shape)
        mask[mask >= 1] = 255
        cv2.imwrite(mask_save_path, mask)

def parse_args():
    parser = argparse.ArgumentParser()
    paa = parser.add_argument
    # common arguments
    paa("--debug",       '-d', action='store_true', help="debug mode?")
    paa("--verobse",     '-v', action='store_true', help="verbose mode?")
    paa("--random_seed", '-r', default=2,           help="random seed for experiments")

    paa("--data_dir", default='data',           help="random seed for experiments")
    return parser.parse_args()

def main(args):
    data_dir = os.path.join(args.data_dir, 'ARCADE', 'syntax')
    assert os.path.exists(data_dir), 'prepare arcade dataset first...'

    for split in ['train', 'test', 'val']:
        print(colorful.bold_white(f'Processing {split} dataset...'))
        cur_data_dir  = os.path.join(data_dir, split)
        json_filename = os.path.join(cur_data_dir, 'annotations', f'{split}.json')
        save_dir      = os.path.join(cur_data_dir, 'masks')
        os.makedirs(save_dir, exist_ok=True)
        coco_json_to_mask(
            json_filename = json_filename,
            save_dir      = save_dir)


if __name__ == '__main__':
    args = parse_args()
    main(args)
    print(colorful.bold_pink('Thank you and Good Job Computer.').styled_string)