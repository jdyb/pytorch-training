#!/usr/bin/env python3

import os
import torch
import logging
import torch.distributed

def run():
    rank = int(os.environ["RANK"])
    world_size = int(os.environ["WORLD_SIZE"])
    logging.info("Initializing rank=%s/%s, waiting nodes to join", rank, world_size)
    torch.distributed.init_process_group("nccl", rank=rank, world_size=world_size)
    logging.info("Initialized rank=%s/%s", rank, world_size)

if __name__ == '__main__':
    run()
