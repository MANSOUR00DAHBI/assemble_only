; hello.asm - Linux x86_64

global main

section .data
msg:    db "hello from pure Assembly!", 10
len     equ $-msg

section .text

main:
    ; write(1, msg, len)
    mov rax, 1          ; syscall: sys_write
    mov rdi, 1          ; stdout
    mov rsi, msg
    mov rdx, len
    syscall

    ; exit(0)
    mov rax, 60         ; syscall: sys_exit
    xor rdi, rdi        ; status 0
    syscall
