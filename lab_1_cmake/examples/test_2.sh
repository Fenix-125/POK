#!/usr/bin/env bash
LD_LIBRARY_PATH=$(pwd)/../library/build:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH
make
if [ $? -eq 0 ]; then bin/minigzip; else echo fail; make clean; fi
