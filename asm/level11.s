.globl _start

_start:
.intel_syntax noprefix
	mov al, [0x404000]
	mov bx, [0x404000]
	mov ecx, [0x404000]
	mov rdx, [0x404000]

	# mov rax, 1
	# syscall