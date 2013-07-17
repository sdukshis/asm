%include "stud_io.inc"

global _start

section .text
_start:
    PRINT "Hello, world"
    PUTCHAR 0x0a

    FINISH
