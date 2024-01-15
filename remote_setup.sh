#!/bin/bash

# Set permissions for Kaggle API key
chmod 600 ~/.kaggle/kaggle.json

# Update and upgrade system packages
sudo apt-get update -y && sudo apt-get upgrade -y

# Install unzip tool
sudo apt-get install unzip

# Install Python dependencies
pip install -r ScatFormer/requirements.txt
pip install kaggle

# Download ImageNet100 dataset
kaggle datasets download -d wilyzh/imagenet100

# Unzip the downloaded dataset
unzip imagenet100.zip

# Remove the zip file after extraction
rm -rf imagenet100.zip