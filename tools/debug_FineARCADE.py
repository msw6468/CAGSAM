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
import cv2

# for data and models
import numpy as np
import pandas as pd

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))
from utils import save_overlapped_mask, overlay_mask_on_image
# --- default packages --- #

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

def main(args):
    df = pd.read_csv('data/FineARCADE/data_info.csv', index_col=0)
    df = df[df['split']=='test']
    for i in tqdm(range(len(df))):
        image_path     = df['image_filename'].iloc[i]
        mask_path      = df['mask_filename'].iloc[i]
        main_mask_path = df['main_mask_filename'].iloc[i]
        fine_mask_path = df['fine_mask_filename'].iloc[i]

        image     = cv2.imread(image_path)
        mask      = cv2.imread(mask_path, 0) * 255
        main_mask = cv2.imread(main_mask_path,0) * 255
        fine_mask = cv2.imread(fine_mask_path,0) * 255
        save_path = f'debug/{image_path.split("/")[-3]}_{image_path.split("/")[-1]}'
        full_mask_image = overlay_mask_on_image(image=image, mask=mask,      color=(0,255,0))
        main_mask_image = overlay_mask_on_image(image=image, mask=main_mask, color=(255,0,0))
        fine_mask_image = overlay_mask_on_image(image=image, mask=fine_mask, color=(0,0,255))
        main_fine_mask_image = overlay_mask_on_image(image=main_mask_image, mask=fine_mask, color=(0,0,255))
        concat_img = np.concatenate([image, 
                                     main_fine_mask_image], 
                                     axis=1)
        os.makedirs(os.path.dirname(save_path), exist_ok=True)
        cv2.imwrite(f"{save_path}", np.uint8(concat_img))



    pass

if __name__ == '__main__':
    args = parse_args()
    main(args)
    print(colorful.bold_pink('Thank you and Good Job Computer.').styled_string)