CC = gcc
CCFLAGS = -O3
LDFLAGS = -O3

SOURCES1 = minigzip.c
SOURCES2 = example.c

PRG_NAME1 = example
PRG_NAME2 = minigzip

BIN_DIR = bin
OBJ_DIR = obj

OBJS = $(patsubst %.c,$(OBJ_DIR)/%.o,$(SOURCES))
#LIB_DIR = /home/fenix/pr/subj/POK/lab_1_cmake/library/bin/
LIB_DIR = ../library/bin
LIB = $(LIB_DIR)/zlib.so


all: dirs $(BIN_DIR)/$(PRG_NAME1) $(BIN_DIR)/$(PRG_NAME2)


.PHONY: dirs
dirs:
	if [ ! -d $(OBJ_DIR) ]; then mkdir $(OBJ_DIR); fi
	if [ ! -d $(BIN_DIR) ]; then mkdir $(BIN_DIR); fi

#gcc -O3 -o  out ../../example/djpeg.c ../../example/cdjpeg.c  -I../../library -L../../library/bin -ljpeg
$(BIN_DIR)/$(PRG_NAME1): $(OBJ_DIR)/$(PRG_NAME1).o
	$(CC) $(LDFLAGS) -o $@ $^ ../library/bin/libzlib.so


$(BIN_DIR)/$(PRG_NAME2): $(OBJ_DIR)/$(PRG_NAME2).o
	$(CC) $(LDFLAGS) -o $@ $^ ../library/bin/libzlib.so


$(OBJ_DIR)/$(PRG_NAME1).o: $(SOURCES1)
	$(CC) -c $(CCFLAGS) $< -o $@


$(OBJ_DIR)/$(PRG_NAME2).o: $(SOURCES2)
	$(CC) -c $(CCFLAGS) $< -o $@


.PHONY: clean
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)
