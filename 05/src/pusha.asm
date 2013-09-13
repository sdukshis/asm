global _start

section .text
_start:
    xor eax, eax
    dec eax
    pusha
    xor eax, eax
    popa

    mov eax, 1
    mov ebx, 0
    int 0x80

