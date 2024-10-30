#!/bin/bash
. ./setup-pytorch.sh
MASTER_ADDR=gish
MASTER_PORT=12355
./fsdp-tutorial.py
