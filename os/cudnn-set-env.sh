#!/bin/bash

export CUDNN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export LD_LIBRARY_PATH=$CUDNN_DIR/lib64:$LD_LIBRARY_PATH
export LIBRARY_PATH=$CUDNN_DIR/lib64:$LIBRARY_PATH
export CPLUS_INCLUDE_PATH=$CUDNN_DIR/include:$CPLUS_INCLUDE_PATH
export CPATH=$CUDNN_DIR/include:$CPATH
