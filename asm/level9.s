.globl _start

_start:
.intel_syntax noprefix
	# x=rdi, y=rax
	
	# clear rax
	xor rax, rax

	xor rdi, 1
	and rdi, 1

	or rax, rdi

	# mov rax, 1
	# syscall
