; Программа проверяет, что введённый текст является
; правильным скобочным выражением
; Filonov Pavel (filonovpv at gmail.com)
; 05 Aug 2013

%include "stud_io.inc"

global _start

section .text
_start:
    mov edx, 1 ; 1 - Yes, 0 - No
    mov ebp, esp; ebp - начальное состояние стека
    ; Основной цикл
cycle:
    GETCHAR     ; считаем очередной символ
    cmp eax, -1 ; если конец файла,
    je answer   ; то печатаем ответ
    cmp al, '(' ; если открывающая скобка
    jne rbrace
    push ax     ; то сохраняем в стека
    jmp cycle   ; и читаем следующий символ
rbrace:
    cmp al, ')' ; если закрывающая,
    jne cycle
    pop ax      ; то извлекаем скобку из стека
    cmp al, '(' ; если она не парная,
    je cycle    
    mov edx, 0  ; то это неправильное выражение
    jmp cycle

    ; Печать ответа
answer:
    cmp edx, 0   ; если выражение неправльное
    je no
    cmp ebp, esp ; или стек не пуст,
    jne no       ; то "NO",
    jmp yes      ; иначе "YES
no:
    PRINT "NO"
    PUTCHAR 10
    jmp end
yes:
    PRINT "YES"
    PUTCHAR 10
    ; Завершение программы
end:
    FINISH

 

