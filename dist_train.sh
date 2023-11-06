#!/usr/bin/env bash

MODEL=$1
nGPUs=$2

OUTPUT_DIR=drive/MyDrive/CV_assignments/Final/scatformer_s01_50d

# python -m torch.distributed.launch --nproc_per_node=$nGPUs --use_env main.py --model $MODEL \
# --data-path drive/MyDrive/ImageNet100 \
# --output_dir $OUTPUT_DIR


python /content/drive/MyDrive/CV_assignments/Final/main.py --model $MODEL \
--data-path drive/MyDrive/CIFAR10 \
--output_dir $OUTPUT_DIR \
--batch-size 64 \
--epochs 50 \
--data-set CIFAR10 \
--distillation-type none \
# --overfit_batches 0.1 \


