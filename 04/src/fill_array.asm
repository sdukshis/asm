; Fill byte array with serial number
; by Filonov Pavel (filonovpv at gmail.com)
; 24 Jul 2013

global _start

section .bss
    array   resb    256

section .text
_start:
    mov ecx, 1
    mov edi, array
again:
    mov [edi], cl
    inc edi
    inc ecx
    cmp ecx, 255
    jl again

    mov eax, 1
    mov ebx, 0
    int 0x80

