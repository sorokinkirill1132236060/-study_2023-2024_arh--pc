%include 'in_out.asm'

SECTION .data
msg1 db "Введите X:",0h
msg2 db "Ввведите A:",0h

SECTION .bss
max resb 10
x resb 10
a resb 10

SECTION .text
GLOBAL _start

_start:
	mov eax,msg1
	call sprint

	mov ecx,x
	mov edx,10
	call sread

	mov eax,x
	call atoi 
	mov [x],eax 

	mov eax,msg2
	call sprint

	mov ecx,a
	mov edx,10
	call sread

	mov eax,a
	call atoi 
	mov [a],eax 

	mov ebx, [x]
	cmp [a], ebx
	jl check

	mov eax, [a]
	mov edx, 2
	mul edx
	mov ebx, [x]
	neg ebx
	add eax, ebx
	jmp fin

check:
	mov eax, 8
	
fin:
	call iprintLF
	call quit

