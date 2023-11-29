%include 'in_out.asm'
SECTION .data
fun db "Функция: f(x)=2x+15", 0
msg db "Результат: ",0
SECTION .text
global _start
_start:
pop ecx ; Извлекаем из стека в `ecx` количество
	; аргументов (первое значение в стеке)
pop edx ; Извлекаем из стека в `edx` имя программы
	; (второе значение в стеке)
sub ecx,1 ; Уменьшаем `ecx` на 1 (количество
	; аргументов без названия программы)
mov esi, 0 ; Используем `esi` для хранения
	; промежуточных сумм
next:
	cmp ecx,0h	; проверяем, есть ли еще аргументы
	jz _end	; если аргументов нет выходим из цикла
	pop eax
		; (переход на метку `_end`)
		; иначе извлекаем следующий аргумент из стека
	call atoi	; преобразуем символ в число
	mov edx, 2
	mul edx
	add esi,eax ; добавляем к промежуточной сумме
		; след. аргумент `esi=esi+eax`
	mov edx, 15
	add esi, edx
	loop next ; переход к обработке следующего аргумента
_end:
	mov eax, fun 
	call sprintLF
	mov eax, msg ; вывод сообщения "Результат: "
	call sprint
	mov eax, esi ; записываем сумму в регистр `eax`
	call iprintLF; печать результата
	call quit	; завершение программы
