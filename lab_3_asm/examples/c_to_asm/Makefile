FASM = fasm
LINKER = gcc
CC = gcc
CFLAGS += -D__USE_MINGW_ANSI_STDIO=1 # Important for MinGW, indifferent for others
CFLAGS += -g -save-temps -masm=intel -Og
LDFLAGS += -g -Og
SUFFIX = .exe

all: sample

sample: sample.o strlen.o
	$(LINKER) $^ -o $@ $(LDFLAGS)
	objdump -d -M intel $@$(SUFFIX) > $@.disasm 

strlen.o: strlen.asm
	$(FASM) $<

sample.o: sample.c	
	$(CC) -c $< -o $@ $(CFLAGS)

PHONY: clean

clean:
	rm *.o *.exe *.disasm -rf
