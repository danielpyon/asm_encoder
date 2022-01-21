.globl _start

_start:
.intel_syntax noprefix
	mov rdi, 0x1337
	mov rax, 1
	syscall

