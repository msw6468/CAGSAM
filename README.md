# SAM-Med2D with FineARCADE

> An extended pipeline for fine-tuning SAM-Med2D with ARCADE and FineARCADE datasets, featuring data augmentation techniques for improved Coronary angiography image segmentation.

## 📌 Overview

This project builds upon [SAM-Med2D](https://github.com/OpenGVLab/SAM-Med2D), a segmentation foundation model for medical imaging, and enhances it using additional annotations from **FineARCADE** and custom data augmentation methods.

---

## 🛠️ Installation

### 1. Create Environment

```bash
conda create --name CAGSAM python=3.10
conda activate CAGSAM
````

### 2. Install Dependencies

```bash
# Install PyTorch (ensure CUDA compatibility)
pip install torch==2.6.0 torchvision==0.21.0 torchaudio==2.6.0

# Install other required packages
pip install -r requirements.txt
```

---

## 📁 Dataset Preparation

### 🔹 Option 1: Download ARCADE from the Original Provider

```bash
wget 'https://zenodo.org/records/10390295/files/arcade.zip?download=1' -O ./data/ARCADE.zip
cd data
unzip ARCADE.zip
mv arcade ARCADE
cd ..
```

Then run the preprocessing scripts:

```bash
python tools/ARCADE_mask_generation.py
python tools/data_prepare.py
```

### 🔹 Option 2: \[Recommended] Download All Datasets via Google Drive

(Includes XCAD, DCA1, ARCADE, and FineARCADE)

```bash
rm -rf data
gdown 1BJhvi6FzVbbalZR5Fzzfk_2un7NPwkqm -O data.zip
unzip data.zip
```

---

## 📥 Download Pretrained Model

```bash
mkdir pretrain_model
gdown 1ARiB5RkSsWmAB_8mqWnwDF8ZKTtFwsjl -O pretrain_model/sam-med2d_b.pt
```

---

## 🚀 Training & Evaluation

### 🔹 Evaluate Pretrained Model

```bash
python test.py
```

### 🔹 Fine-Tuning (without augmentation)

```bash
python train.py \
  --not_augments \
  --data_path data/ARCADE \
  --work_dir work_dir/ft_ARCADE
```

### 🔹 Fine-Tuning (with augmentation)

```bash
python train.py \
  --bg_data_path data/ARCADE \
  --fg_data_path data/ARCADE \
  --fg_num 2 \
  --fg_overlap \
  --fg_min_size 0.50 \
  --fg_max_size 1.00 \
  --work_dir work_dir/aug_ARCADE \
  --test_save_pred
```

---

## ⚙️ Training Arguments

| Argument           | Description                                             |
| ------------------ | ------------------------------------------------------- |
| `--data_path`      | Path to training dataset (used for simple fine-tuning). |
| `--work_dir`       | Directory to save results and logs.                     |
| `--test_save_pred` | Save predictions after testing.                         |
| `--bg_data_path`   | Background dataset path for augmentation.               |
| `--fg_data_path`   | Foreground dataset path for augmentation.               |
| `--fg_num`         | Number of foreground masks to apply.                    |
| `--fg_overlap`     | Whether to allow overlapping masks.                     |
| `--fg_min_size`    | Minimum size of the foreground object (relative).       |
| `--fg_max_size`    | Maximum size of the foreground object (relative).       |

---

## 🖼️ FineARCADE Samples

* **🔵 Blue mask**: Original label from ARCADE
* **🔴 Red mask**: Additional label from FineARCADE

<p float="left">
  <img src="assets/sample1.png" width="400px" />
  <img src="assets/sample2.png" width="400px" />
  <img src="assets/sample3.png" width="400px" />
  <img src="assets/sample4.png" width="400px" />
</p>

---

## 📄 License

This project inherits the license from [SAM-Med2D](https://github.com/OpenGVLab/SAM-Med2D). Please refer to the original repository and LICENSE file for usage restrictions.

---

## 🙏 Acknowledgments

* [SAM-Med2D](https://github.com/OpenGVLab/SAM-Med2D)
* [ARCADE Challenge](https://arcade.cs.cmu.edu/)
* Contributors to FineARCADE (additional annotations)

---

## 📣 Citation

If you use this project, please consider citing the original SAM-Med2D paper and ARCADE dataset. Add a BibTeX entry here if applicable.
```
TBD
```