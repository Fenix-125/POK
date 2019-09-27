CXX = g++
CXXFLAGS := -O3

all: bzip

bzip: bzip2.o
    $(CXX)

bzip2.o: bzip2.c
    $(CXX) -c $(CXXFLAGS) $^

.PHONY: clean
clean:
    rm -rf *.o bzip