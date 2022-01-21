.globl _start

_start:
.intel_syntax noprefix
	sub [rsp], rdi

	# mov rax, 1
	# syscall
