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
import json
# --- default packages --- #

# --- customized packages --- #
# --- customized packages --- #

def save_dict_to_json(data_dict, filename):
    os.makedirs(os.path.dirname(filename), exist_ok=True)
    with open(filename, 'w', encoding='utf-8') as f:
        json.dump(data_dict, f, ensure_ascii=False, indent=4)

def parse_args():
    parser = argparse.ArgumentParser()
    paa = parser.add_argument
    paa("--data", default=['ARCADE', 'FineARCADE'], nargs='+', help="[ARCADE, XCAD, DCA1]")
    # common arguments
    return parser.parse_args()

def main(args):
    FineARCADE_df = pd.read_csv('data/FineARCADE/data_info.csv', index_col=0)
    for data_name in args.data:
        image2label_dict = {}
        label2image_dict = {}
        if data_name in ['ARCADE','FineARCADE']:
            split = 'train' if data_name == 'ARCADE' else 'test'
            cur_df = FineARCADE_df[FineARCADE_df['split'] == split]
            for i in range(len(cur_df)):
                image_filename = cur_df['image_filename'].iloc[i]
                mask_filename = cur_df['mask_filename'].iloc[i]
                image2label_dict[image_filename] = [mask_filename]
                label2image_dict[mask_filename] = image_filename
        else:
            data_path = f'data/{data_name}'
            if not os.path.exists(data_path):
                print(f"Data path {data_path} does not exist. Skipping...")
                continue
            data_files = glob(os.path.join(data_path, 'imgs', '*.png'))
            if not data_files:
                print(f"No files found in {data_path}.")
                continue

            data_files.sort()
            for img_file in data_files:
                mask_file = img_file.replace('imgs', 'masks')
                assert os.path.isfile(mask_file), f'mask_file "{mask_file}" does not exist, prepare it first'
                image2label_dict[img_file] = [mask_file]
                label2image_dict[mask_file] = img_file

        save_dict_to_json(image2label_dict, f'data/{data_name}/image2label_train.json')
        save_dict_to_json(label2image_dict, f'data/{data_name}/label2image_test.json')
        print(f'Saved {len(image2label_dict)} file pairs to data/{data_name}/image2label_train.json, num: {len(image2label_dict)}')
    
    '''
    # XCAD+ARCADE
    image2label_dict = {}
    label2image_dict = {}
    for data_name in ['ARCADE', 'XCAD']:
        cur_i2l_dict = json.load(open(f'data/{data_name}/image2label_train.json', 'r'))
        cur_l2i_dict = json.load(open(f'data/{data_name}/label2image_test.json', 'r'))
        image2label_dict.update(cur_i2l_dict)
        label2image_dict.update(cur_l2i_dict)

    save_dict_to_json(image2label_dict, f'data/XCAD+ARCADE/image2label_train.json')
    save_dict_to_json(label2image_dict, f'data/XCAD+ARCADE/label2image_test.json')
    print(f'Saved {len(image2label_dict)} file pairs to data/XCAD+ARCADE/image2label_train.json, num: {len(image2label_dict)}')

    # ALL_CAG
    cur_i2l_dict = json.load(open(f'data/DCA1/image2label_train.json', 'r'))
    cur_l2i_dict = json.load(open(f'data/DCA1/label2image_test.json', 'r'))
    image2label_dict.update(cur_i2l_dict)
    label2image_dict.update(cur_l2i_dict)
    save_dict_to_json(image2label_dict, f'data/ALL_CAG/image2label_train.json')
    save_dict_to_json(label2image_dict, f'data/ALL_CAG/label2image_test.json')
    print(f'Saved {len(image2label_dict)} file pairs to data/ALL_CAG/image2label_train.json, num: {len(image2label_dict)}')

    # ALL
    cur_i2l_dict = json.load(open(f'data/FIVES/image2label_train.json', 'r'))
    cur_l2i_dict = json.load(open(f'data/FIVES/label2image_test.json', 'r'))
    image2label_dict.update(cur_i2l_dict)
    label2image_dict.update(cur_l2i_dict)
    save_dict_to_json(image2label_dict, f'data/ALL/image2label_train.json')
    save_dict_to_json(label2image_dict, f'data/ALL/label2image_test.json')
    print(f'Saved {len(image2label_dict)} file pairs to data/ALL/image2label_train.json, num: {len(image2label_dict)}')
    '''


if __name__ == '__main__':
    args = parse_args()
    main(args)
    print(colorful.bold_pink('Thank you and Good Job Computer.').styled_string)
