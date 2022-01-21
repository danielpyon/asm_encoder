.globl _start

_start:
.intel_syntax noprefix
	mov rax, qword ptr [rdi]
	mov rbx, qword ptr [rdi + 8]

	xor rcx, rcx
	add rcx, rax
	add rcx, rbx

	mov [rsi], rcx

	# mov rax, 1
	# syscall
