#!/bin/bash
. ./setup-pytorch.sh

function showvar() { echo "$1 => $(eval echo \$$1)"; }

export WORLD_SIZE=$1
export RANK=$2

export MASTER_PORT=10203
export MASTER_ADDR=zanaam

python3 fsdp-tutorial.py
