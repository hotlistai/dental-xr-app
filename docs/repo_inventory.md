# Repository Inventory

This document provides an overview of the contents of each cloned repository.

## Repository Details

### 1. DentalCaries-Detection
**Purpose**: CNN example for panoramic caries classification

**Contents**:
- `TeethCaries_Classification.ipynb` - Main classification notebook
- `TeethCaries_preprocess.ipynb` - Data preprocessing
- `caries_model1.h5` - Pre-trained model weights
- `teeth_caries.py` - Python implementation
- `requirements.txt` - Dependencies

### 2. Detectron2-Dental
**Purpose**: Detectron2-based object detection & instance segmentation

**Contents**:
- `Detectron2_object_detection_instance_segmentation_using_teeth_dataset (2).ipynb` - Main notebook
- Implementation using Facebook's Detectron2 framework

### 3. HierarchicalDet
**Purpose**: MICCAI diffusion-based hierarchical model for multi-label detection

**Contents**:
- `train_net.py` - Training script
- `demo.py` - Inference demo
- `evaluator.py` - Evaluation metrics
- `configs/` - Model configurations
- `hierarchialdet/` - Core model code
- `detectron2/` - Modified Detectron2
- `pycocotools/` - COCO evaluation tools

### 4. MLUA
**Purpose**: Panoramic caries segmentation with DC1000 dataset

**Contents**:
- `mlua_run.py` - Main MLUA model runner
- `clcc_run.py` - CLCC method
- `uamt_run.py` - UAMT method
- `urpc_run.py` - URPC method
- `dataset/` - Dataset utilities
- `model/` - Model architectures
- `evaluate/` - Evaluation scripts

### 5. OdontoAI-Open-Panoramic-Radiographs
**Purpose**: Benchmark dataset (4,000 images) for instance segmentation

**Contents**:
- `demo.ipynb` - Demonstration notebook
- `conversions.py` - Data format conversions
- Links to dataset download

### 6. Teeth-Seg-UNet
**Purpose**: PyTorch U-Net for teeth segmentation

**Contents**:
- `train.ipynb` - Training notebook
- `Test.ipynb` - Testing/inference
- `Res_Unet.py` - Residual U-Net implementation
- `3Ddata_attempt.ipynb` - 3D data experiments
- `TeethSeg.pdf` - Documentation
- `images/` - Sample images

### 7. Yeditepe-Teeth-Segmentation
**Purpose**: U-Net based instance/semantic segmentation (AGPL-3.0)

**Contents**:
- `Main.ipynb` - Main segmentation pipeline
- `model.py` - U-Net model architecture
- `download_dataset.py` - Dataset downloader
- `images_prepare.py` - Image preprocessing
- `masks_prepare.py` - Mask generation
- `CCA_Analysis.py` - Connected component analysis
- `Binary_Image_Analysis/` - Binary mask analysis
- `Scores_and_Test/` - Evaluation results
- `requirements.txt` - Dependencies

### 8. qinxini
**Purpose**: Multi-center panoramic dataset access

**Contents**:
- `README.md` - Dataset request instructions
- Links to multi-center panoramic radiography data

## Model Types Summary

| Repository | Model Type | Framework | Task |
|-----------|-----------|-----------|------|
| DentalCaries-Detection | CNN | Keras/TF | Classification |
| Detectron2-Dental | Detectron2 | PyTorch | Detection + Segmentation |
| HierarchicalDet | Hierarchical Det | PyTorch | Multi-label Detection |
| MLUA | Semi-supervised | PyTorch | Caries Segmentation |
| OdontoAI | Benchmark | - | Instance Segmentation |
| Teeth-Seg-UNet | U-Net | PyTorch | Segmentation |
| Yeditepe | U-Net | Keras/TF | Instance Segmentation |
| qinxini | Dataset | - | Data Access |
