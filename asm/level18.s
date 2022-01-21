.globl _start

_start:
.intel_syntax noprefix
	xor rax, rax

	# rdi contains 64 bit qword address, but the actual data
	# at that address is 32 bit signed integer

	cmp dword ptr [rdi], 0x7f454c46
	je plus
	cmp dword ptr [rdi], 0x00005a4d
	je minus
	jmp times
plus:
	mov eax, dword ptr [rdi + 4]
	add eax, dword ptr [rdi + 8]
	add eax, dword ptr [rdi + 12]
	jmp done
minus:
	mov eax, dword ptr [rdi + 4]
	sub eax, dword ptr [rdi + 8]
	sub eax, dword ptr [rdi + 12]
	jmp done
times:
	mov eax, dword ptr [rdi + 4]
	imul dword ptr [rdi + 8]
	imul dword ptr [rdi + 12]
	jmp done
done:
	

	# mov rax, 1
	# syscall
