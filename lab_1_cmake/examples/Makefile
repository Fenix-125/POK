CC = gcc
CCFLAGS = -O3
LDFLAGS = -O3

SOURCES = minigzip.c example.c
PRG_NAME = example
BIN_DIR = bin
OBJ_DIR = obj

OBJS = $(patsubst %.c,$(OBJ_DIR)/%.o,$(SOURCES))


all: dirs $(BIN_DIR)/$(PRG_NAME) $(BIN_DIR)/$(PRG_NAME).so


-include $(OBJS:.o=.d)


$(BIN_DIR)/$(PRG_NAME): $(OBJS) $(SO_OBJS)
	$(CC) -shared -Wl,-soname,lib$(PKG_NAME).so $(LDFLAGS) $(SO_OBJS) -o $@.so


$(OBJ_DIR)/%.o: %.c
	$(CC) -c $(CCFLAGS) $< -o $@
	$(CC) -MM -MP -MT $@ -MF $(OBJ_DIR)/*.d $(CCFLAGS) $<


.PHONY: dirs
dirs:
	if [ ! -d $(OBJ_DIR) ]; then mkdir $(OBJ_DIR); fi
	if [ ! -d $(BIN_DIR) ]; then mkdir $(BIN_DIR); fi
	if [ ! -d $(SO_DIR) ]; then mkdir $(SO_DIR); fi


.PHONY: clean
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)
