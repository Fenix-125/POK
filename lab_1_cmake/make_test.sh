#!/usr/bin/env bash
  LD_LIBRARY_PATH=$(pwd)/library/bin:$LD_LIBRARY_PATH
  export LD_LIBRARY_PATH
cd library || exit 1
make  # with optimization
# OR (do not combine)
#make debug

cd ../examples || exit 2
make  # with optimization
#O R (do not combine)
#make debug

echo; echo
echo Example test:
bin/example
if [ ! $? -eq 0 ]; then echo fail; make clean; exit 3; fi
echo; echo

echo "Archiving string: \"some text\""
echo 'Result:'
echo "some text" | bin/minigzip
if [ ! $? -eq 0 ]; then echo fail; make clean; exit 4; fi
