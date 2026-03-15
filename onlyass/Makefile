.PHONY: all clean
<<<<<<< HEAD
CC= x86_64-w64-mingw32-gcc 
LINK= - lkernel32
NASM= nasm 
FLAGS_NSM= -f win64
source= hello.asm
OBJCT= hello.obj
program= hello.exe
=======
>>>>>>> 17df7337b09252fe80135b637937e2d60e95e860

# Build settings for Linux x86_64
NASM = nasm
NASM_FLAGS = -f elf64
CC = gcc
CFLAGS = -no-pie

HELLO_SRC = hello/hello.asm
HELLO_OBJ = hello.o
HELLO_BIN = hello.bin

<<<<<<< HEAD
$(program):$(OBJCT)
	$(CC)  $(OBJCT)  -o $(program) 
=======
PRINT_SRC = ../print/print.asm
PRINT_OBJ = print.o
PRINT_BIN = print
>>>>>>> 17df7337b09252fe80135b637937e2d60e95e860

all: $(HELLO_BIN) $(PRINT_BIN)

$(HELLO_OBJ): $(HELLO_SRC)
	$(NASM) $(NASM_FLAGS) $< -o $@

$(HELLO_BIN): $(HELLO_OBJ)
	$(CC) $(CFLAGS) $< -o $@

$(PRINT_OBJ): $(PRINT_SRC)
	$(NASM) $(NASM_FLAGS) $< -o $@

$(PRINT_BIN): $(PRINT_OBJ)
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(HELLO_OBJ) $(HELLO_BIN) $(PRINT_OBJ) $(PRINT_BIN)