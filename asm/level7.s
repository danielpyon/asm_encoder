.globl _start

_start:
.intel_syntax noprefix
	shr rdi, 24
	mov rbx, rdi
	mov al, bl

	# mov rax, 1
	# syscall
