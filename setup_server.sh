#!/bin/bash
# Server setup script for dental X-ray AI project
# Run this on your remote server: bash setup_server.sh

set -e

echo "=== Dental X-Ray AI Server Setup ==="
echo ""

# Create project directory
PROJECT_DIR="/root/dental-xr-app"
mkdir -p $PROJECT_DIR
cd $PROJECT_DIR

echo "✓ Created project directory: $PROJECT_DIR"

# Clone main repository (if using git)
# Note: Update the git URL to your actual repository URL
# git clone YOUR_GIT_URL .
# git checkout claude/dental-ai-serverless-backend-IQoX7

# Create directory structure
mkdir -p repos datasets data docs

echo "✓ Created directory structure"

# Clone research repositories
echo ""
echo "Cloning research repositories..."

cd repos

echo "  → Cloning OdontoAI..."
git clone https://github.com/IvisionLab/OdontoAI-Open-Panoramic-Radiographs.git 2>/dev/null || echo "Already exists"

echo "  → Cloning qinxini..."
git clone https://github.com/qinxin99/qinxini.git 2>/dev/null || echo "Already exists"

echo "  → Cloning HierarchicalDet..."
git clone https://github.com/ibrahimethemhamamci/HierarchicalDet.git 2>/dev/null || echo "Already exists"

echo "  → Cloning MLUA..."
git clone https://github.com/Zzz512/MLUA.git 2>/dev/null || echo "Already exists"

echo "  → Cloning Yeditepe-Teeth-Segmentation..."
git clone https://github.com/ImagingYeditepe/Segmentation-of-Teeth-in-Panoramic-X-ray-Image.git Yeditepe-Teeth-Segmentation 2>/dev/null || echo "Already exists"

echo "  → Cloning Detectron2-Dental..."
git clone https://github.com/arpsn123/Dental-X-RAY-Image-Detection-and-Instance-Segmentation.git Detectron2-Dental 2>/dev/null || echo "Already exists"

echo "  → Cloning Teeth-Seg-UNet..."
git clone https://github.com/jytjyt05/Teeth-Seg.git Teeth-Seg-UNet 2>/dev/null || echo "Already exists"

echo "  → Cloning DentalCaries-Detection..."
git clone https://github.com/sundaresancg/DentalCaries_Detection.git DentalCaries-Detection 2>/dev/null || echo "Already exists"

cd ..

echo ""
echo "✓ All repositories cloned"

# Install Python dependencies
echo ""
echo "Installing Python dependencies..."

# Check if Python is installed
if command -v python3 &> /dev/null; then
    echo "  Python3 found: $(python3 --version)"

    # Install pip if not present
    if ! command -v pip3 &> /dev/null; then
        echo "  Installing pip..."
        curl -sS https://bootstrap.pypa.io/get-pip.py | python3
    fi

    # Install common dependencies
    pip3 install --quiet kagglehub numpy pandas opencv-python pillow torch torchvision tensorflow

    echo "✓ Python dependencies installed"
else
    echo "⚠ Python3 not found. Please install Python 3.8+ manually"
fi

# Show project structure
echo ""
echo "=== Project Structure ==="
tree -L 2 -d . 2>/dev/null || ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'

echo ""
echo "=== Setup Complete ==="
echo ""
echo "Project location: $PROJECT_DIR"
echo "Repositories cloned: 8"
echo ""
echo "Next steps:"
echo "1. Download datasets to $PROJECT_DIR/datasets/"
echo "2. Set up your serverless infrastructure (AWS Lambda, API Gateway, etc.)"
echo "3. Configure model inference endpoints"
echo ""
