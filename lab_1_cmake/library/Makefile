CC = gcc
CCFLAGS = -O3
LDFLAGS = -O3

SOURCES = adler32.c compress.c crc32.c deflate.c gzclose.c gzlib.c gzread.c gzwrite.c infback.c inffast.c inflate.c inftrees.c trees.c uncompr.c zutil.c
PRG_NAME = zlib
BIN_DIR = bin
OBJ_DIR = obj
SO_DIR = $(OBJ_DIR)/so_obj

OBJS = $(patsubst %.c,$(OBJ_DIR)/%.o,$(SOURCES))
SO_OBJS = $(patsubst %.c,$(SO_DIR)/%.o,$(SOURCES))


all: dirs $(BIN_DIR)/$(PRG_NAME) $(BIN_DIR)/$(PRG_NAME).so


-include $(OBJS:.o=.d)
#-include $(SO_OBJS:.o=$(SO_DIR)/so_objects.d)


$(BIN_DIR)/$(PRG_NAME): $(OBJS) $(SO_OBJS)
	ar rcs $(BIN_DIR)/$(PRG_NAME).a $(OBJS)

	$(CC) -shared -Wl,-soname,lib$(PKG_NAME).so $(LDFLAGS) $(SO_OBJS) -o $@.so
	$(CC) -shared -Wl,-soname,lib$(PKG_NAME).so.a,--out-implib,$(PKG_NAME).so.a $(LDFLAGS) $(SO_OBJS) -o $@.so.a


$(OBJ_DIR)/%.o: %.c
	$(CC) -c $(CCFLAGS) $< -o $@
	$(CC) -MM -MP -MT $@ -MF $(OBJ_DIR)/*.d $(CCFLAGS) $<


$(SO_DIR)/%.o: %.c
	$(CC) -c $(CCFLAGS) $< -o $@ -fPIC


.PHONY: dirs
dirs:
	if [ ! -d $(OBJ_DIR) ]; then mkdir $(OBJ_DIR); fi
	if [ ! -d $(BIN_DIR) ]; then mkdir $(BIN_DIR); fi
	if [ ! -d $(SO_DIR) ]; then mkdir $(SO_DIR); fi


.PHONY: clean
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)
