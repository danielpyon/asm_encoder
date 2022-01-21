.globl _start

_start:
.intel_syntax noprefix
	mov rax, rdi
	div rax, rsi

	# need to exit otherwise segfault
	# but don't include for ctf
	# mov rax, 1
	# syscall
