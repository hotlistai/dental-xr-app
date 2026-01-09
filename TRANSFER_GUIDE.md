# Server Transfer Guide

This guide explains how to transfer your dental X-ray AI project to `root@72.62.130.146`.

## Quick Start (Recommended)

### Method 1: Transfer Setup Script Only

The fastest way is to transfer the setup script and run it on your server:

```bash
# From your local machine
scp setup_server.sh root@72.62.130.146:/root/

# SSH into server and run
ssh root@72.62.130.146
bash /root/setup_server.sh
```

This will:
- Create the project structure
- Clone all 8 research repositories
- Install Python dependencies

### Method 2: Transfer Entire Project

If you want to preserve everything including local modifications:

```bash
# Option A: Using rsync (recommended - faster, incremental)
rsync -avz --progress \
  --exclude 'repos/' \
  --exclude 'data/' \
  --exclude 'datasets/' \
  dental-xr-app/ root@72.62.130.146:/root/dental-xr-app/

# Then clone repos on server
ssh root@72.62.130.146 "cd /root/dental-xr-app && bash setup_server.sh"

# Option B: Using tar + scp (good for one-time transfer)
tar czf dental-xr-app.tar.gz \
  --exclude='repos' \
  --exclude='data' \
  --exclude='datasets' \
  dental-xr-app/

scp dental-xr-app.tar.gz root@72.62.130.146:/root/
ssh root@72.62.130.146 "cd /root && tar xzf dental-xr-app.tar.gz && cd dental-xr-app && bash setup_server.sh"
```

## What Gets Transferred

### Core Files (Small - Transfer These)
- `README.md` - Project documentation
- `docs/` - Repository inventory and documentation
- `download_dataset.py` - Dataset download script
- `setup_server.sh` - Server setup script
- `.gitignore` - Git ignore rules

### Excluded (Large - Recreate on Server)
- `repos/` - Research repositories (will be cloned fresh on server)
- `data/` - Dataset files (download directly on server)
- `datasets/` - Dataset files (download directly on server)

## Post-Transfer Steps

After transferring to your server:

### 1. Verify Transfer
```bash
ssh root@72.62.130.146
cd /root/dental-xr-app
ls -la
```

### 2. Clone Research Repos
```bash
# If not already done by setup_server.sh
cd /root/dental-xr-app
bash setup_server.sh
```

### 3. Download Datasets
```bash
# On the server
cd /root/dental-xr-app

# Kaggle dataset (if you have Kaggle credentials)
python3 download_dataset.py

# Or manually download and upload:
# From your local machine:
# scp -r /path/to/datasets/* root@72.62.130.146:/root/dental-xr-app/datasets/
```

### 4. Set Up Python Environment
```bash
# On the server
cd /root/dental-xr-app

# Option A: Create virtual environment (recommended)
python3 -m venv venv
source venv/bin/activate
pip install kagglehub numpy pandas opencv-python pillow torch torchvision tensorflow

# Option B: System-wide installation
pip3 install kagglehub numpy pandas opencv-python pillow torch torchvision tensorflow
```

### 5. Verify Repository Contents
```bash
cd /root/dental-xr-app/repos
ls -la
# Should show 8 directories:
# - DentalCaries-Detection
# - Detectron2-Dental
# - HierarchicalDet
# - MLUA
# - OdontoAI-Open-Panoramic-Radiographs
# - Teeth-Seg-UNet
# - Yeditepe-Teeth-Segmentation
# - qinxini
```

## Storage Requirements

Estimated space needed on server:

- Core project files: ~5 MB
- Research repositories: ~500 MB
- Datasets (varies):
  - Kaggle panoramic: ~2-5 GB
  - Zenodo datasets: ~1-3 GB each
  - Total recommended: 20-50 GB free space

## Security Notes

⚠️ **Important**: SSH'ing as root is not recommended for production. Consider:
1. Creating a dedicated user account
2. Using SSH keys instead of passwords
3. Disabling root SSH login
4. Setting up firewall rules

## Troubleshooting

### Connection Issues
```bash
# Test SSH connection
ssh -v root@72.62.130.146

# If timeout, check firewall
ssh -o ConnectTimeout=30 root@72.62.130.146
```

### Permission Issues
```bash
# On server, fix permissions
chown -R root:root /root/dental-xr-app
chmod -R 755 /root/dental-xr-app
```

### Git Clone Failures
```bash
# If repos fail to clone, try one by one:
cd /root/dental-xr-app/repos
git clone https://github.com/IvisionLab/OdontoAI-Open-Panoramic-Radiographs.git
# etc.
```

## Quick Commands Reference

```bash
# Transfer just setup script
scp setup_server.sh root@72.62.130.146:/root/

# Transfer compressed project
tar czf project.tar.gz --exclude='repos' dental-xr-app/
scp project.tar.gz root@72.62.130.146:/root/

# SSH and extract
ssh root@72.62.130.146 "cd /root && tar xzf project.tar.gz"

# Run setup
ssh root@72.62.130.146 "cd /root/dental-xr-app && bash setup_server.sh"
```
