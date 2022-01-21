.globl _start

_start:
.intel_syntax noprefix
	# doing 32bit ops zeros the upper half of register


	# goal: rax = lowest 8 bits of rdi
	# goal: rbx = lowest 16 bits of rsi

	mov rbx, rdi
	mov al, bl

	mov rcx, rsi
	mov bx, cx

	# mov rax, 1
	# syscall
