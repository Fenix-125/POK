#!/usr/bin/env bash

cd library || exit 1
mkdir build -p
cd build || exit 2

cmake -G"Unix Makefiles" .. -D CMAKE_BUILD_TYPE=Release
#O R (do not combine)
#cmake -G"Unix Makefiles" .. -D CMAKE_BUILD_TYPE=Debug
make


cd ../../examples || exit 3
mkdir build -p
cd build || exit 4

cmake -G"Unix Makefiles" .. -D CMAKE_BUILD_TYPE=Release
#O R (do not combine)
#cmake -G"Unix Makefiles" .. -D CMAKE_BUILD_TYPE=Debug
make

echo; echo
echo Example test:
./example
if [ ! $? -eq 0 ]; then echo fail; make clean; exit 5; fi
echo; echo

echo "Archiving string: \"some text\""
echo 'Result:'
echo "some text" | ./minigzip
if [ ! $? -eq 0 ]; then echo fail; make clean; exit 6; fi
