#!/bin/bash
. /setup-torch.sh
MASTER_ADDR=10.161.10.10
MASTER_PORT=12355
./fsdp-tutorial.py
