.globl _start

_start:
.intel_syntax noprefix
	mov rax, qword ptr [rsp+0]
	mov rbx, qword ptr [rsp+8]
	mov rcx, qword ptr [rsp+16]
	mov rdx, qword ptr [rsp+24]

	add rax, rbx
	add rax, rcx
	add rax, rdx

	mov rdx, 0
	mov rbx, 0x00000004
	
	div rax, rbx
	push rax

	# mov rax, 1
	# syscall
