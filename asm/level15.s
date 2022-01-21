.globl _start

_start:
.intel_syntax noprefix
	# swap rdi and rsi only using push/pop

	push rdi
	push rsi

	pop rdi
	pop rsi

	# mov rax, 1
	# syscall
