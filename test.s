.globl _start

_start:
.intel_syntax noprefix
    ; some random register operations
    imul rdi, rsi
	mov rax, rdi
	add rax, rdx

    ; exit syscall
	mov rax, 1
	syscall

