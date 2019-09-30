CC = gcc
CCFLAGS = -O3
LDFLAGS = -O3

SOURCES = adler32.c compress.c crc32.c deflate.c gzclose.c gzlib.c gzread.c gzwrite.c infback.c inffast.c inflate.c inftrees.c trees.c uncompr.c zutil.c
PRG_NAME = zlib
BIN_DIR = bin
OBJ_DIR = obj


OBJS = $(patsubst %.c,$(OBJ_DIR)/%.o,$(SOURCES))


all: $(BIN_DIR)/$(PRG_NAME)


-include $(OBJS:.o=.d)

$(BIN_DIR)/$(PRG_NAME): $(OBJS)
	#$(CC) $(LDFLAGS) $^ -o $@
	if [ ! -d $(OBJ_DIR) ]; then mkdir $(OBJ_DIR); fi
	if [ ! -d $(BIN_DIR) ]; then mkdir $(BIN_DIR); fi

	ar rcs $(BIN_DIR)/$(PRG_NAME).a $(OBJS)

$(OBJ_DIR)/%.o: %.c
	$(CC) -c $(CCFLAGS) $< -o $@
	$(CC) -MM -MP -MT $@ -MF $(OBJ_DIR)/*.d $(CCFLAGS) $<


.PHONY: clean
clean:
	rm -rf $(OBJ_DIR)*.o $(OBJ_DIR)/*.d $(BIN_DIR)/$(PKG_NAME)

