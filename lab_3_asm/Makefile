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
ASMFLAGS =


all: dirs $(BIN_DIR)/$(PKJ_NAME)
	echo -e "\nOutput:"
	$(BIN_DIR)/$(PKJ_NAME)


dirs:
	mkdir $(OBJ_DIR) -p
	mkdir $(BIN_DIR) -p


$(BIN_DIR)/$(PKJ_NAME): $(OBJS_ASM)
	$(CC) $^ -o $@ $(CCFLAGS)


$(OBJ_DIR)/%.o: $(ASM_DIR)/%.asm
	$(ASM) $^ $@


.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
