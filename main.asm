format ELF64
public _start 
; rax - 64
; eax - 32
; ax - 16
; ah/al - 8

msg db "Hello, asm!", 0xA, 0
len = $-msg


; byte - 8 bit
; word - 16 bit
; dword - 32 bit
; qword - 64 bit

_start:
    mov rax, 4; 4 - write
    mov rbx, 1; 1 - stoud
    mov rcx, msg
    mov rdx, len
    int 0x80
    call exit
    
exit:
    mov rax, 1
    mov rbx, 0
    int 0x80

