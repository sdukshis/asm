%include "stud_io.inc"

global _start

section .text
_start:
    mov ecx, 5
cycle:
    PRINT "Hello, world"
    PUTCHAR 0x0a
    dec ecx
    jnz cycle

    FINISH 
