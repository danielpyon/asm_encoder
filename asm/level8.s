.globl _start

_start:
.intel_syntax noprefix
	and rdi, rsi
	
	# zero rax
	xor rax, rax
	
	# set bits with rdi
	or rax, rdi

	# mov rax, 1
	# syscall
