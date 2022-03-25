section .text
	global main
	extern printf

_start:
	;Adding 8 and 73
  	mov eax, 8
  	mov ebx, 73
  	add eax,ebx
  	push eax
  	push message
  	call printf
  	add esp, 8
  	;Exit routine	
	mov eax,1
	mov ebx,0
	int 0x80

section .data
	message db "Value = %d", 10, 0
