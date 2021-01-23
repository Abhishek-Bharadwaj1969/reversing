BITS 32

extern scanf
extern printf


section .data


	print: db "%d",0
	addi:db"summation is %d",10,0
	sub:db "diff is %d",10,0
	pro:db "prod is %d",10,0
	div:db "div is %d",10,0
	rem:db "rem is %d",10,0

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

		lea ebx,[ebp-0x8]
		push ebx
		push print
		call scanf

		mov eax,DWORD[ebp-0x4]
		mov ebx,DWORD[ebp-0x8]
		add eax,ebx
		push eax
		push addi
		call printf

		mov eax,DWORD[ebp-0x4]
		mov ebx,DWORD[ebp-0x8]
		sub eax,ebx
		push eax
		push sub
		call printf

		mov eax,DWORD[ebp-0x4]
		mov ebx,DWORD[ebp-0x8]
		imul eax,ebx
		push eax
		push pro
		call printf

		xor edx,edx
		mov eax,DWORD[ebp-0x4]
		mov ebx,DWORD[ebp-0x8]
		div ebx
		push eax
		push div
		call printf

		xor edx,edx
		mov eax,DWORD[ebp-0x4]
		mov ebx,DWORD[ebp-0x8]
		div ebx
		push edx
		push rem
		call printf
	


		leave
		ret

