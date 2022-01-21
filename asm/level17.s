.globl _start

_start:
.intel_syntax noprefix
    jmp bottom
    nop dword ptr [eax] 
bottom:
    mov rdi, qword ptr [rsp]
    mov rax, 0x403000
    jmp rax
    
    # mov rax, 1
    # syscall

