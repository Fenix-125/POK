CC = gcc
CCFLAGS = -O3 -w
LDFLAGS = -O3 -w

SOURCES1 = example.c
SOURCES2 = minigzip.c

PRG_NAME1 = example
PRG_NAME2 = minigzip

BIN_DIR = bin
OBJ_DIR = obj

OBJS = $(patsubst %.c,$(OBJ_DIR)/%.o,$(SOURCES))
#LIB_DIR = /home/fenix/pr/subj/POK/lab_1_cmake/library/bin/
LIB_DIR = ../library/bin
LIB = $(LIB_DIR)/zlib.so


all: dirs $(BIN_DIR)/$(PRG_NAME1) $(BIN_DIR)/$(PRG_NAME2)


debug: CCFLAGS = -g -w
debug: LDFLAGS = -g -w
debug: all


$(OBJ_DIR):
	mkdir $(OBJ_DIR) -p

$(BIN_DIR):
	mkdir $(BIN_DIR) -p

dirs: $(OBJ_DIR) $(BIN_DIR)


$(BIN_DIR)/$(PRG_NAME1): $(OBJ_DIR)/$(PRG_NAME1).o
	$(CC) $(LDFLAGS) -o $@ $^ ../library/bin/libzlib.so


$(BIN_DIR)/$(PRG_NAME2): $(OBJ_DIR)/$(PRG_NAME2).o
	$(CC) $(LDFLAG.S) -o $@ $^ ../library/bin/libzlib.so


$(OBJ_DIR)/$(PRG_NAME1).o: $(SOURCES1)
	$(CC) -c $(CCFLAGS) $< -o $@


$(OBJ_DIR)/$(PRG_NAME2).o: $(SOURCES2)
	$(CC) -c $(CCFLAGS) $< -o $@


.PHONY: clean
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)
