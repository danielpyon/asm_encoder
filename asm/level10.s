.globl _start

_start:
.intel_syntax noprefix
	mov rax, qword ptr [0x404000]
	add word ptr [0x404000], 0x1337	
	
	# mov rax, 1
	# syscall
