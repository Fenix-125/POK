#!/usr/bin/env bash
cd library || exit 1
make clean

cd ../examples || exit 2
make clean
if [ -e foo.gz ]; then rm foo.gz; fi
