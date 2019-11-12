CC = gcc
ASM = fasm

PKJ_NAME = s_int32_sort
ASM_DIR = src/asm
BUILD_DIR = build
OBJ_DIR = $(BUILD_DIR)/obj
BIN_DIR = $(BUILD_DIR)/bin

SOURCES_ASM = $(wildcard $(ASM_DIR)/*.asm)
OBJS_ASM = $(patsubst $(ASM_DIR)/%.asm,$(OBJ_DIR)/%.o,$(SOURCES_ASM))
CCFLAGS = -static


all: dirs $(BIN_DIR)/$(PKJ_NAME)


$(OBJ_DIR):
	mkdir $(OBJ_DIR) -p

$(BIN_DIR):
	mkdir $(BIN_DIR) -p

dirs: $(OBJ_DIR) $(BIN_DIR)


sort_test:
	$(CC) src/c/sort_arr_sint32.c -o $(BIN_DIR)/arr_sort_C_test


$(BIN_DIR)/$(PKJ_NAME): $(OBJS_ASM)
	$(CC) $^ -o $@ $(CCFLAGS)


$(OBJ_DIR)/%.o: $(ASM_DIR)/%.asm
	$(ASM) $^ $@


.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
