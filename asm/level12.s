.globl _start

_start:
.intel_syntax noprefix
	mov rax, 0xDEADBEEF00001337

	mov [rdi], rax

	mov rax, 0x000000C0FFEE0000
	mov [rsi], rax

	# mov rax, 1
	# syscall
