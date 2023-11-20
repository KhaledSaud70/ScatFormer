#!/usr/bin/env bash

MODEL=$1
nGPUs=$2

OUTPUT_DIR=/root/workspace/efficientformer_s0_100d

# python -m torch.distributed.launch --nproc_per_node=$nGPUs --use_env /root/workspace/ScatFormer/main.py --model $MODEL \
# --data-path /root/workspace/ImageNet100 \
# --output_dir $OUTPUT_DIR \
# --batch-size 128 \
# --epochs 300 \
# --distillation-type none \

python /root/workspace/ScatFormer/main.py --model $MODEL \
--data-path /root/workspace/ImageNet100 \
--output_dir $OUTPUT_DIR \
--batch-size 256 \
--epochs 100 \
--resume /root/workspace/ScatFormer/efficientformer_s0_100d/checkpoint.pth \
--distillation-type none \


