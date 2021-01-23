BITS 32

extern scanf
extern printf


section .data


	print: db "%d",0
	facti:db"factorial is %d",10,0

section .text
	
	global main
	main:
	push ebp
	mov ebp,esp
	sub esp,0x10

	lea eax,[ebp-0x4]
	push eax
	push print
	call scanf

	mov eax,DWORD[ebp-0x4]
	mov ebx,1
	

	
	abd:
	imul ebx,eax
	dec eax
		
	cmp eax,1
	jge abd	
	

	

	push ebx
	push facti
	call printf

	leave
	ret