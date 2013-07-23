; Evaluate the expression (100 + 200) div (100*200 - 333)
; Filonov Pavel (filonovpv at gmail.com)
; 23 Jul 2013 
%include "stud_io.inc"
global _start

section .data
    a dd 100
    b dd 200
    c dd 300
    d dd 333
section .text
_start:
    mov ebx, 100
    add ebx, 200
    mov eax, 100
    mov edx, 0
    imul eax, 200
    sub eax, 333
    mov ecx, eax
    mov eax, ebx
    mov edx, 0
    div ebx

    FINISH
    
