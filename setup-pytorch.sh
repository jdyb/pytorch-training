#!/bin/sh

VENVDIR=/var/tmp/$USER/pytorch-venv
if [ ! -d $VENVDIR ]; then
  python3 -m venv $VENVDIR
  source $VENVDIR/bin/activate
  pip install torch torchvision torchaudio
else
  source $VENVDIR/bin/activate
fi

