CC = gcc
CCFLAGS = -O3
LDFLAGS = -O3

SOURCES =  $(wildcard *.c)
PRG_NAME = libzlib
BIN_DIR = bin
OBJ_DIR = obj
SO_DIR = $(OBJ_DIR)/so_obj

OBJS = $(patsubst %.c,$(OBJ_DIR)/%.o,$(SOURCES))
SO_OBJS = $(patsubst %.c,$(SO_DIR)/%.o,$(SOURCES))


all: dirs $(BIN_DIR)/$(PRG_NAME) TARG_SO


#.PHONY: dirs
dirs:
	if [ ! -d $(OBJ_DIR) ]; then mkdir $(OBJ_DIR); fi
	if [ ! -d $(BIN_DIR) ]; then mkdir $(BIN_DIR); fi
	if [ ! -d $(SO_DIR) ]; then mkdir $(SO_DIR); fi


$(BIN_DIR)/$(PRG_NAME): $(OBJS)
	ar rcs $@.a $(OBJS)


TARG_SO: $(SO_OBJS)
	$(CC) -shared -Wl,-soname,$(PRG_NAME).so $(LDFLAGS) $(SO_OBJS) -o $(BIN_DIR)/$(PRG_NAME).so
	$(CC) -shared -Wl,-soname,$(PRG_NAME).so.a,--out-implib,$(BIN_DIR)/$(PRG_NAME).so.a $(LDFLAGS) $(SO_OBJS) -o $(BIN_DIR)/$(PRG_NAME).so.a


$(OBJ_DIR)/%.o: %.c
	$(CC) -c $(CCFLAGS) $< -o $@
	$(CC) -MM -MP -MT $@ -MF $(OBJ_DIR)/$*.d $(CCFLAGS) $<


$(SO_DIR)/%.o: %.c
	$(CC) -c $(CCFLAGS) $< -o $@ -fPIC


.PHONY: clean
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

-include $(OBJS:.o=.d)
#-include $(SO_OBJS:.o=$(SO_DIR)/so_objects.d)
