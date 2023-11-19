#!/usr/bin/env bash

MODEL=$1
nGPUs=$2

OUTPUT_DIR=/root/workspace/scatformer_s0_300d

# python -m torch.distributed.launch --nproc_per_node=$nGPUs --use_env /root/workspace/ScatFormer/main.py --model $MODEL \
# --data-path /root/workspace/ImageNet100 \
# --output_dir $OUTPUT_DIR \
# --batch-size 128 \
# --epochs 300 \
# --distillation-type none \

python /root/workspace/ScatFormer/main.py --model $MODEL \
--data-path /root/workspace/ImageNet100 \
--output_dir $OUTPUT_DIR \
--batch-size 128 \
--epochs 300 \
--distillation-type none \


