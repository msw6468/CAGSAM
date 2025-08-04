#!/gallery_mfa/sangwoo.moon/miniconda3/envs/cagsam/bin/python

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
# --- default packages --- #

# --- customized packages --- #
from tbparse import SummaryReader
# --- customized packages --- #

def parse_args():
    parser = argparse.ArgumentParser()
    paa = parser.add_argument
    # common arguments
    paa("--debug",       '-d', action='store_true', help="debug mode?")
    paa("--verobse",     '-v', action='store_true', help="verbose mode?")
    paa("--random_seed", '-r', default=2,           help="random seed for experiments")
    paa("--regex", default='*',      help="random seed for experiments")
    paa("--work_dir", default='work_dir',      help="random seed for experiments")
    return parser.parse_args()

def main(args):
    exp_list = glob(os.path.join(args.work_dir, args.regex, 'logs', '*events.out*'))
    print(len(exp_list), 'experiments found.')
    
    df = pd.DataFrame()
    count = 0
    failed_exp_list = []
    for exp_path in tqdm(exp_list):
        reader = SummaryReader(exp_path)
        exp_name = exp_path.split('/')[1]
        metrics = reader.scalars
        try:
            test_dice           = metrics[metrics['tag']=='test/dice']
            test_dice_fine_only = metrics[metrics['tag']=='test/dice_fine_only']
            test_dice_main_only = metrics[metrics['tag']=='test/dice_main_only']
        except Exception as e:
            failed_exp_list.append((exp_name, test_dice))
            print(colorful.bold_red(f"Error reading metrics for {exp_name}: {e}"))
            continue
        if len(test_dice) != 50:
            failed_exp_list.append((exp_name, test_dice))
            # print(colorful.bold_red(f"Incomplete {exp_name}, {len(test_dice)}/50"))
            continue

        count += 1
        best_test_dice_idx = test_dice['value'].argmax()
        # best_test_dice_idx = test_dice_fine_only['value'].argmax()
        best_test_dice = test_dice['value'].iloc[best_test_dice_idx]
        last_test_dice = test_dice['value'].iloc[-1]
        best_test_dice_fine_only = test_dice_fine_only['value'].iloc[best_test_dice_idx]
        last_test_dice_fine_only = test_dice_fine_only['value'].iloc[-1]
        best_test_dice_main_only = test_dice_main_only['value'].iloc[best_test_dice_idx]
        last_test_dice_main_only = test_dice_main_only['value'].iloc[-1]

        if 'XCAD+ARCADE' in exp_name:
            data = 'XCAD+ARCADE'
        elif 'XCAD' in exp_name:
            data = 'XCAD'
        elif 'ARCADE' in exp_name:
            data = 'ARCADE'
        elif 'DCA1' in exp_name:
            data = 'DCA1'
        else:
            data = 'OTHERS'
        
        df = pd.concat((df, pd.DataFrame({
            'data': [data],
            'exp_name': [exp_name],
            'best_test_dice'          : [f'{best_test_dice:.4f}'],
            'best_test_dice_fine_only': [f'{best_test_dice_fine_only:.4f}'],
            'best_test_dice_main_only': [f'{best_test_dice_main_only:.4f}'],
            'last_test_dice'          : [f'{last_test_dice:.4f}'],
            'last_test_dice_fine_only': [f'{last_test_dice_fine_only:.4f}'],
            'last_test_dice_main_only': [f'{last_test_dice_main_only:.4f}'],
        })))
    for exp_name, test_dice  in failed_exp_list:
        print(colorful.bold_red(f"Incomplete {exp_name}, {len(test_dice)}/50"))

    df.to_csv('results.csv', index=False)
    print(df.to_csv(sep=';', index=False))
    print(colorful.bold_green(f"Complete experiments: {len(df)}"))

if __name__ == '__main__':
    args = parse_args()
    main(args)
    print(colorful.bold_pink('Thank you and Good Job Computer.').styled_string)