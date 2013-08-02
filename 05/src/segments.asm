; Dummy program to look at segments addresses
; by Filonov Pavel (filonovpv at gmail.com)
; 02 Aug 2013

global _start

section .data
    d dw    1

section .bss
    b resd  1

section .text
_start:
    xor eax, eax
    inc eax
    xor ebx, ebx
    int 0x80

