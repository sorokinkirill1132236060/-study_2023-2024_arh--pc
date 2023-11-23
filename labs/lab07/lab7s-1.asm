%include 'in_out.asm'

section .data
    msg1 db "Наименьшее число:",0h
    a dd 12
    b dd 23
    c dd 45

section .bss
    min resb 10

section .text
global _start

_start:
    mov eax, msg1
    call sprint

    mov ecx, [a]
    mov [min], ecx 
    cmp ecx, [c] 
    jl check_B 
    mov ecx, [c]
    mov [min], ecx 

check_B:

    mov ecx, [min]
    cmp ecx, [b] 
    jl fin 
    mov ecx, [b] 
    mov [min], ecx

fin:
    mov eax, [min]
    call iprintLF ; Вывод 'min(A,B,C)'
    call quit ; Выход
