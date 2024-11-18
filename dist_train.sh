#!/usr/bin/env bash

MODEL=$1
nGPUs=$2

OUTPUT_DIR=scatformer_s0_100d

# python -m torch.distributed.launch --nproc_per_node=$nGPUs --use_env main.py --model $MODEL \
# --data-path path/to/ImageNet100 \
# --output_dir $OUTPUT_DIR \
# --batch-size 128 \
# --epochs 300 \

python main.py --model $MODEL \
--data-path path/to/ImageNet100 \
--output_dir $OUTPUT_DIR \
--batch-size 256 \
--epochs 100 \
--distillation-type none \


