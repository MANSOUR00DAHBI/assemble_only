.PHONY: all clean
CC= x86_64-w64-mingw32-gcc 
LINK= - lkernel32
NASM= nasm 
FLAGS_NSM= -f win64
source= hello.asm
OBJCT= hello.obj
program= hello.exe

all:  print.exe  $(program) 

$(OBJCT): $(source)
	$(NASM) $(FLAGS_NSM) $(source) -o $(OBJCT)

$(program):$(OBJCT)
	$(CC)  $(OBJCT)  -o $(program) 


print.obj: print.asm
	nasm -f win64 print.asm -o print.obj

print.exe: print.obj
	gcc print.obj -o print.exe

clean:
	rm $(OBJCT) $(program)