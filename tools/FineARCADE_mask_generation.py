# pip install numpy pandas colorful prettytable tqdm pudb ipython
# --- default packages --- #
import os, sys
from glob import glob
import argparse
import shutil

# for visualization
import colorful
from pprint import pprint
from prettytable import PrettyTable
from tqdm import tqdm
import json, pickle
import cv2
from pycocotools import mask as maskUtils
from PIL import Image

# for data and models
import numpy as np
import pandas as pd
# --- default packages --- #

from utils import overlay_mask_on_image

# --- customized packages --- #
# --- customized packages --- #

def parse_args():
    parser = argparse.ArgumentParser()
    paa = parser.add_argument
    # common arguments
    paa("--debug",       '-d', action='store_true', help="debug mode?")
    paa("--verobse",     '-v', action='store_true', help="verbose mode?")
    paa("--random_seed", '-r', default=2,           help="random seed for experiments")
    return parser.parse_args()

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

def main(args):
    image_dir     = 'data/FineARCADE/RCA_masks_annotations/imgs'
    full_mask_dir = 'data/FineARCADE/RCA_masks_annotations/masks'
    rca_mask_dir  = 'data/FineARCADE/RCA_masks_annotations/rca_masks'
    main_mask_dir = 'data/FineARCADE/RCA_masks_annotations/main_masks'
    analysis_mask_dir = 'data/FineARCADE/RCA_masks_annotations/analysis_masks'
    os.makedirs(full_mask_dir, exist_ok=True)
    os.makedirs(rca_mask_dir, exist_ok=True)
    os.makedirs(main_mask_dir, exist_ok=True)
    os.makedirs(analysis_mask_dir, exist_ok=True)

    frame2png_path = 'data/FineARCADE/RCA_masks_annotations/frame2png.csv'
    frame2png = pd.read_csv(frame2png_path, index_col=0)

    annotation_path = 'data/FineARCADE/RCA_masks_annotations/annotation.pkl'
    with open(annotation_path, 'rb') as f:
        annotation = pickle.load(f)
    
    for row in tqdm(frame2png.itertuples(), total=len(frame2png), desc="Processing frame2png"):
        fname = row.new_png_name
        image_path = os.path.join(image_dir, fname)
        full_mask_path = os.path.join(full_mask_dir, fname)
        rca_mask_path  = os.path.join(rca_mask_dir, fname)
        main_mask_path = os.path.join(main_mask_dir, fname)
        analysis_mask_path = os.path.join(analysis_mask_dir, fname.replace('png','pdf'))

        image     = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE)
        full_mask = np.zeros_like(image)
        rca_mask  = np.zeros_like(image)
        main_mask = np.zeros_like(image)

        for i in range(len(annotation)):
            anno = annotation[i]
            image_name = annotation[i]['image_name']
            segmentation = annotation[i]['segmentation'] 
            category_name = annotation[i]['category_name']
            if image_name == fname:
                mask = segmentation_to_mask(segmentation, image.shape)
                full_mask += mask
                if category_name == 'RCA':
                    rca_mask += mask
                else:
                    main_mask += mask

        full_mask[full_mask > 1] = 1
        rca_mask[rca_mask > 1] = 1
        main_mask[main_mask > 1] = 1
        cv2.imwrite(full_mask_path, full_mask)
        cv2.imwrite(main_mask_path, main_mask)
        cv2.imwrite(rca_mask_path, rca_mask)

        # code for analysis
        image     = np.stack([image] * 3, axis=-1)
        masked_image = overlay_mask_on_image(image, main_mask, color=(255, 0, 0))
        masked_image = overlay_mask_on_image(masked_image, rca_mask, color=(0, 0, 255))

        # top = np.concatenate([image, overlay_mask_on_image(image, full_mask, color=(0, 255, 0))], axis=1)
        # bottom = np.concatenate([overlay_mask_on_image(image, main_mask, color=(255,0,0)), 
        #                         overlay_mask_on_image(image, rca_mask, color=(0,0,255))], axis=1)
        # grid_img = np.concatenate([top, bottom], axis=0)


        grid_img = np.concatenate([image, masked_image], axis=1)
        grid_img = cv2.cvtColor(grid_img, cv2.COLOR_BGR2RGB)
        grid_img = Image.fromarray(grid_img)
        grid_img.save(analysis_mask_path)

if __name__ == '__main__':
    args = parse_args()
    main(args)
    print(colorful.bold_pink('Thank you and Good Job Computer.').styled_string)