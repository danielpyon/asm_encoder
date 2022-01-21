.globl _start

_start:
.intel_syntax noprefix
	add rdi, 0x331337
	
	mov rax, 1
	syscall

