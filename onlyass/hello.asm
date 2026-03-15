;hello.asm
section .data
    msg: db "hello from pure Assembly!",10,0
    len equ $ - msg
section .bss
    written resd 1
section .text 
    global main  
    extern GetStdHandle  
    extern WriteConsoleA  
    extern ExitProcess
    extern getchar
main:
    ; Get console handle 
    mov rcx, -11
    call GetStdHandle
    ; Write text 
    mov rcx, rax 
    mov rdx, msg
    mov r8,len
    mov r9, written
    sub rsp, 32 
    call WriteConsoleA
    add rsp, 32 
    call getchar
    ;Exit 
    mov rcx,0
    call ExitProcess
    
