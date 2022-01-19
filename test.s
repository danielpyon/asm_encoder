.globl _start

_start:
.intel_syntax noprefix
    imul rdi, rsi
	mov rax, rdi
	add rax, rdx

	mov rax, 1
	syscall

