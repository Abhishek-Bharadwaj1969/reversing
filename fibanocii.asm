BITS 32

extern scanf
extern printf


section .data


	print: db "%d",0
	fib_num :db"fib is %d",10,0

section .text
	
	global main
	main:
	push ebp
	mov ebp,esp
	sub esp,0x10

	lea eax,[ebp-0x8]
	push eax
	push print
	call scanf

	mov eax,2
	mov ebx,1
	mov dword[ebp-0xc],0
		

	hitman:
	mov dword[ebp-0x4],ebx
	add ebx,dword[ebp-0xc]
	mov ecx,dword[ebp-0x4]
	mov dword[ebp-0xc],ecx
	add eax,1

	cmp eax,dword[ebp-0x8]
	jle hitman

	
		
	

	

	push ebx
	push fib_num
	call printf

	leave
	ret