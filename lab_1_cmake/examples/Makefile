CXX = g++
CXXFLAGS := -O3
PKG_NAME = minigzip

all: $(PKG_NAME)

$(PKG_NAME):

bzip: bzip2.o
    $(CXX)

bzip2.o: bzip2.c
    $(CXX) -c $(CXXFLAGS) $^

.PHONY: clean
clean:
    rm -rf *.o bzip