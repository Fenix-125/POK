CC = gcc
CCFLAGS = -O3 -w
LDFLAGS = -O3 -w

SOURCES =  $(wildcard *.c)
PRG_NAME = libzlib
BIN_DIR = bin
OBJ_DIR = obj
SO_DIR = $(OBJ_DIR)/so_obj
BIN_NAME = $(BIN_DIR)/$(PRG_NAME)

OBJS = $(patsubst %.c,$(OBJ_DIR)/%.o,$(SOURCES))
SO_OBJS = $(patsubst %.c,$(SO_DIR)/%.o,$(SOURCES))


all: dirs $(BIN_NAME).a $(BIN_NAME).so $(BIN_NAME).so.a


debug: CCFLAGS = -g -w
debug: LDFLAGS = -g -w
debug: all


$(OBJ_DIR):
	mkdir $(OBJ_DIR) -p

$(BIN_DIR):
	mkdir $(BIN_DIR) -p

$(SO_DIR):
	mkdir $(SO_DIR) -p

dirs: $(OBJ_DIR) $(BIN_DIR) $(SO_DIR)


$(BIN_NAME).a: $(OBJS)
	ar rcs $@ $(OBJS)


$(BIN_NAME).so: $(SO_OBJS)
	$(CC) -shared -Wl,-soname,$(PRG_NAME).so $(LDFLAGS) $(SO_OBJS) -o $@

$(BIN_NAME).so.a:
	$(CC) -shared -Wl,-soname,$(PRG_NAME).so.a,--out-implib,$@ $(LDFLAGS) $(SO_OBJS) -o $@


$(OBJ_DIR)/%.o: %.c
	$(CC) -c $(CCFLAGS) $< -o $@
	$(CC) -MM -MP -MT $@ -MF $(OBJ_DIR)/$*.d $(CCFLAGS) $<


$(SO_DIR)/%.o: %.c
	$(CC) -c $(CCFLAGS) $< -o $@ -fPIC


.PHONY: clean
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

-include $(OBJS:.o=.d)
