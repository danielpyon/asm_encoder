.globl _start

_start:
.intel_syntax noprefix
	mov rax, rdi
	div rax, rsi
	mov rax, rdx

	# rdi mod rsi
	# remainder is placed in rdx

	# need to exit otherwise segfault
	# but don't include for ctf
	# mov rax, 1
	# syscall
