# Dental X-Ray AI Serverless Backend

This project implements a serverless AI backend for dental X-ray image analysis, focusing on panoramic radiographs. The system leverages state-of-the-art deep learning models for various dental diagnostic tasks.

## 🎯 Project Overview

**Branch**: `claude/dental-ai-serverless-backend-IQoX7`

This repository contains:
- Open-source dental X-ray model implementations
- Dataset access scripts and documentation
- AI model code for teeth segmentation, caries detection, and pathology classification
- Serverless backend infrastructure (planned)

## 📚 Cloned Research Repositories

### Dataset & Benchmark Repos

#### 1. **OdontoAI - Open Panoramic Radiographs**
- **Location**: `repos/OdontoAI-Open-Panoramic-Radiographs/`
- **Source**: https://github.com/IvisionLab/OdontoAI-Open-Panoramic-Radiographs
- **Description**: Benchmark code + pointers to 4,000-image panoramic radiograph collection for instance segmentation research
- **Use Case**: Baseline benchmark for panoramic X-ray analysis

#### 2. **Multi-Center Panoramic Radiography**
- **Location**: `repos/qinxini/`
- **Source**: https://github.com/qinxin99/qinxini
- **Description**: Multi-center panoramic dataset for impacted teeth, periodontitis, and caries research
- **Note**: Commercial restrictions apply; dataset requires request

#### 3. **MLUA - Panoramic Caries Segmentation**
- **Location**: `repos/MLUA/`
- **Source**: https://github.com/Zzz512/MLUA
- **Description**: Public caries segmentation project with DC1000 dataset test samples
- **Use Case**: Caries detection and segmentation

### Model Implementation Repos

#### 4. **HierarchicalDet - Multi-Label Object Detection**
- **Location**: `repos/HierarchicalDet/`
- **Source**: https://github.com/ibrahimethemhamamci/HierarchicalDet
- **Description**: MICCAI diffusion-based hierarchical model for panoramic dental X-ray analysis
- **Use Case**: Multi-label detection baseline for multiple dental pathologies

#### 5. **Yeditepe Teeth Segmentation**
- **Location**: `repos/Yeditepe-Teeth-Segmentation/`
- **Source**: https://github.com/ImagingYeditepe/Segmentation-of-Teeth-in-Panoramic-X-ray-Image
- **License**: AGPL-3.0
- **Description**: U-Net based instance/semantic segmentation for panoramic X-rays
- **Use Case**: Individual tooth segmentation and numbering

#### 6. **Detectron2 Dental Detection**
- **Location**: `repos/Detectron2-Dental/`
- **Source**: https://github.com/arpsn123/Dental-X-RAY-Image-Detection-and-Instance-Segmentation
- **Description**: Detectron2-based object detection & instance segmentation for dental X-rays
- **Use Case**: State-of-the-art object detection framework adaptation

#### 7. **Teeth-Seg PyTorch U-Net**
- **Location**: `repos/Teeth-Seg-UNet/`
- **Source**: https://github.com/jytjyt05/Teeth-Seg
- **Description**: PyTorch U-Net implementation for basic teeth segmentation
- **Use Case**: Lightweight segmentation baseline

#### 8. **Dental Caries Detection Example**
- **Location**: `repos/DentalCaries-Detection/`
- **Source**: https://github.com/sundaresancg/DentalCaries_Detection
- **Description**: CNN example for panoramic caries classification (116 image source)
- **Use Case**: Simple classification baseline

## 📊 Available Datasets

### Direct Dataset Links (Require Manual Download)

#### Panoramic Dental Dataset (Kaggle)
- **URL**: https://www.kaggle.com/datasets/thunderpede/panoramic-dental-dataset/data
- **Description**: Panoramic images with segmentation masks for caries
- **Use Case**: Segmentation and caries classification
- **Access**: Requires Kaggle account

#### Panoramic Dental X-Ray Dataset (Kaggle - Orvile)
- **URL**: https://www.kaggle.com/datasets/orvile/panoramic-dental-xray-dataset
- **Script**: `download_dataset.py` (requires network access)
- **Status**: ⚠️ Currently blocked by network proxy

#### Dental X-Ray Panoramic (Roboflow Universe)
- **URL**: https://universe.roboflow.com/celldetection-ok5sm/dental-x-ray-panoramic-dataset
- **License**: CC BY 4.0
- **Classes**: Bone loss, caries, crowns, fractures, implants, etc.
- **Use Case**: Multi-class object detection

#### Zenodo Panoramic Radiography Database
- **URL**: https://zenodo.org/records/4457648
- **Description**: 598 panoramic radiographs (no labels)
- **Use Case**: Unsupervised learning, pretraining

#### DenPAR Periapical Radiographs (Zenodo)
- **URL**: https://zenodo.org/record/16645076
- **License**: CC BY 4.0
- **Description**: 1,000 periapical X-rays with segmentation and keypoint annotations
- **Use Case**: Periapical analysis, transfer learning

## 🔍 Additional Resources

### GitHub Topic Collections
- [dental-panoramic-images](https://github.com/topics/dental-panoramic-images)
- [teeth-segmentation](https://github.com/topics/teeth-segmentation)

## 🏗️ Project Structure

```
dental-xr-app/
├── repos/                          # Cloned research repositories
│   ├── OdontoAI-Open-Panoramic-Radiographs/
│   ├── qinxini/
│   ├── HierarchicalDet/
│   ├── MLUA/
│   ├── Yeditepe-Teeth-Segmentation/
│   ├── Detectron2-Dental/
│   ├── Teeth-Seg-UNet/
│   └── DentalCaries-Detection/
├── datasets/                       # Downloaded datasets (gitignored)
├── docs/                          # Documentation
├── download_dataset.py            # Kaggle dataset downloader
├── .gitignore                     # Git ignore rules
└── README.md                      # This file
```

## 🚀 Next Steps

1. **Dataset Acquisition**: Download datasets from external sources (Kaggle, Zenodo, Roboflow)
2. **Model Evaluation**: Test existing models on benchmark datasets
3. **Serverless Architecture**: Design AWS Lambda/API Gateway infrastructure
4. **Model Optimization**: Convert models to optimized formats (ONNX, TensorRT)
5. **API Development**: Build REST APIs for inference
6. **Deployment**: Deploy to AWS with CI/CD pipeline

## 📝 Notes

- All datasets are stored in `data/` and `datasets/` directories (gitignored)
- Network proxy restrictions currently prevent direct Kaggle/Zenodo downloads
- Datasets must be manually downloaded or accessed via alternative means
- All cloned repositories maintain their original licenses

## 🔧 Requirements

```bash
# Python dependencies for dataset download
pip install kagglehub

# Model training/inference (varies by repository)
# See individual repo README files for specific requirements
```

## 📄 License

This project aggregates multiple open-source repositories with varying licenses. Please refer to individual repository licenses before use.
