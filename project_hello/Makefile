.PHONY: ALL  clean
CC_64= x86_64-w64-mingw32-gcc 
CC_32= gcc
FALGS32= -m32
NASM= nasm 
FLAGSNAM= -f win64
FILEASM= ./src/hello.asm
FILEKERNEL= ./kernel/hello.c
OUT_ASM_OBJECT= ./objecte/obj_hello.obj
MYNAME= ./build/myprogram.exe

ALL: ass kernel
ass: $(FILEASM)
	nasm $(FLAGSNAM) $(FILEASM)  -o $(OUT_ASM_OBJECT)

kernel: $(FILEKERNEL) $(OUT_ASM_OBJECT)
	$(CC_64)  $(OUT_ASM_OBJECT) $(FILEKERNEL) -o $(MYNAME) 

clean:
	rm -rf $(OUT_ASM_OBJECT) $(MYNAME) 