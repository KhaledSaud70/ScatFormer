#!/usr/bin/env bash

MODEL=$1
nGPUs=$2

OUTPUT_DIR=/root/myspace/scatformer_s01_50d

# python -m torch.distributed.launch --nproc_per_node=$nGPUs --use_env main.py --model $MODEL \
# --data-path drive/MyDrive/ImageNet100 \
# --output_dir $OUTPUT_DIR


python /root/myspace/ScatFormer/main.py --model $MODEL \
--data-path /root/myspace/data/ImageNet100 \
--output_dir $OUTPUT_DIR \
--batch-size 128 \
--epochs 50 \
--distillation-type none \
# --overfit_batches 0.1 \


