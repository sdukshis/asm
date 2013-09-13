; Greatest Common Divisor subprogramm
; by Filonov Pavel (filonovpv at gmail.com)
; 6 Aug 2013

global _start

section .text
_start:
    push 169
    push 39
    call gcd
    add esp, 8

    mov eax, 1
    mov ebx, 0
    int 0x80

gcd:
    push ebp
    mov ebp, esp
    push ebx
    push edx
    pushf

while: ; b <> 0
    cmp [ebp+12], dword 0
    je wend
    mov eax, [ebp+8]  ; eax := a
    mov ebx, [ebp+12] ; ebx := b
    cdq               ; eax -> [edx:eax]
    idiv ebx          ; edx := a mod b
    mov [ebp+8],  ebx ; a := b
    mov [ebp+12], edx ; b := edx
    jmp while

wend:
    mov eax, [ebp + 8] ; return a
    
    popf
    pop edx
    pop ebx
    mov esp, ebp
    pop ebp
    ret


    
