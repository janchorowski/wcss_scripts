#!/bin/bash

module load plgrid/libs/hdf5/1.8.12
module load plgrid/tools/python/2.7.9
module load plgrid/apps/cuda/7.0.28

source ~/os/cudnn-7.0-3.0/set-env.sh
source ~/lvsr_python/bin/activate
source ~/work/fully-neural-lvsr/env.sh
source ~/bin/zeus/os/mpi4py/set-env.sh
