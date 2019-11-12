CC = gcc
ASM = fasm

ASM_DIR = src/asm
ASM_LIB_DIR = lib
C_DIR = src/c

BUILD_DIR = build
OBJ_DIR = $(BUILD_DIR)/obj
BIN_DIR = $(BUILD_DIR)/bin
LIB_OBJ_DIR = $(BUILD_DIR)/lib_obj

SOURCES_ASM = $(wildcard $(ASM_DIR)/*.asm)
OBJS_ASM = $(patsubst $(ASM_DIR)/%.asm,$(OBJ_DIR)/%.o,$(SOURCES_ASM))

SOURCES_LIB_ASM = $(wildcard $(ASM_LIB_DIR)/*.asm)
LIB_OBJS_ASM = $(patsubst $(ASM_LIB_DIR)/%.asm,$(LIB_OBJ_DIR)/%.o,$(SOURCES_LIB_ASM))
CCFLAGS = -static


all: sort_asm_test sort_c_test


$(OBJ_DIR):
	mkdir $(OBJ_DIR) -p

$(LIB_OBJ_DIR):
	mkdir $(LIB_OBJ_DIR) -p

$(BIN_DIR):
	mkdir $(BIN_DIR) -p

dirs: $(OBJ_DIR) $(BIN_DIR) $(LIB_OBJ_DIR)


sort_c_test: dirs  $(LIB_OBJS_ASM)
	$(CC) $(C_DIR)/asm_sort_use.c -c -o $(OBJ_DIR)/asm_sort_use.o
	$(CC)  $(LIB_OBJS_ASM) $(OBJ_DIR)/asm_sort_use.o -o $(BIN_DIR)/$@ $(CCFLAGS)


sort_asm_test: dirs $(OBJS_ASM) $(LIB_OBJS_ASM)
	$(CC) $(OBJS_ASM) $(LIB_OBJS_ASM) -o $(BIN_DIR)/$@ $(CCFLAGS)


$(OBJ_DIR)/%.o: $(ASM_DIR)/%.asm
	$(ASM) $^ $@

$(LIB_OBJ_DIR)/%.o: $(ASM_LIB_DIR)/%.asm
	$(ASM) $^ $@

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
