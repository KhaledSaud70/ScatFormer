#!/usr/bin/env bash

MODEL=$1
nGPUs=$2

OUTPUT_DIR=/root/workspace/scatformer_s01_100d

# python -m torch.distributed.launch --nproc_per_node=$nGPUs --use_env main.py --model $MODEL \
# --data-path drive/MyDrive/ImageNet100 \
# --output_dir $OUTPUT_DIR


python /root/workspace/ScatFormer/main.py --model $MODEL \
--data-path /root/workspace/ImageNet100 \
--output_dir $OUTPUT_DIR \
--batch-size 128 \
--epochs 100 \
--distillation-type none \
# --overfit_batches 0.1 \


