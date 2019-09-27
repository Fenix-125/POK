CXX = g++
CXXFLAGS = -O3
OBJS = blocksort.o bzlib.o compress.o crctable.o decompress.o huffman.o randtable.o
PKG_NAME = bzlib

all: $(PKG_NAME)

$(PKG_NAME): $(OBJS)
    $(CXX) $^ -o $@ $(CXXFLAGS)


%.o: %.cpp $(HEADERS)
    $(CXX) -c $(CXXFLAGS) $<


.PHONY: clean
clean:
    rm -rf *.o $(PKG_NAME)