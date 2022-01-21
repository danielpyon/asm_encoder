.globl _start

_start:
.intel_syntax noprefix
	imul rdi, rsi
	mov rax, rdi
	add rax, rdx

	# need to exit otherwise segfault
	# but don't include for ctf
	# mov rax, 1
	# syscall
