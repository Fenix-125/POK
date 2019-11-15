#!/usr/bin/env bash

mkdir build -p
cd build
cmake -G"Unix Makefiles" ..
make
cd ../bin
./main
