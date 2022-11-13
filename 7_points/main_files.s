	.file	"main_files.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\320\235\320\265\320\262\320\265\321\200\320\275\320\276\320\265 \320\272\320\276\320\273\320\270\321\207\320\265\321\201\321\202\320\262\320\276 \320\277\320\260\321\200\320\260\320\274\320\265\321\202\321\200\320\276\320\262, \320\270\321\205 \320\262\321\201\320\265\320\263\320\264\320\260 2 - \320\262\321\205\320\276\320\264\320\275\320\276\320\271 \320\270 \320\262\321\213\321\205\320\276\320\264\320\275\320\276\320\271 \321\204\320\260\320\271\320\273"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 72
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	DWORD PTR -100[rbp], edi
	mov	QWORD PTR -112[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rbx, rax
	mov	DWORD PTR -88[rbp], 0
	cmp	DWORD PTR -100[rbp], 3
	je	.L2
	cmp	DWORD PTR -100[rbp], 1
	je	.L2
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 1
	mov	rsp, rbx
	jmp	.L3
.L2:
	cmp	DWORD PTR -100[rbp], 3
	jne	.L4
	mov	rax, QWORD PTR -112[rbp]
	mov	rdi, rax
	call	get_N_file@PLT
	mov	DWORD PTR -88[rbp], eax
	jmp	.L5
.L4:
	mov	eax, 0
	call	get_N@PLT
	mov	DWORD PTR -88[rbp], eax
.L5:
	mov	DWORD PTR -84[rbp], 0
	cmp	DWORD PTR -100[rbp], 3
	jne	.L6
	mov	rax, QWORD PTR -112[rbp]
	mov	rdi, rax
	call	get_size_of_string_file@PLT
	mov	DWORD PTR -84[rbp], eax
	jmp	.L7
.L6:
	mov	eax, 0
	call	get_size_of_string@PLT
	mov	DWORD PTR -84[rbp], eax
.L7:
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -72[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	cdqe
	mov	edx, 16
	sub	rdx, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L8:
	cmp	rsp, rdx
	je	.L9
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L8
.L9:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L10
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L10:
	mov	rax, rsp
	add	rax, 0
	mov	QWORD PTR -64[rbp], rax
	cmp	DWORD PTR -100[rbp], 3
	jne	.L11
	mov	rdx, QWORD PTR -112[rbp]
	mov	ecx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	get_string_file@PLT
	jmp	.L12
.L11:
	mov	edx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	get_string@PLT
.L12:
	mov	edx, DWORD PTR -88[rbp]
	mov	esi, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -64[rbp]
	lea	rcx, counter_index.0[rip]
	mov	rdi, rax
	call	find_index_count@PLT
	mov	eax, DWORD PTR counter_index.0[rip]
	mov	DWORD PTR -80[rbp], eax
	mov	eax, DWORD PTR counter_index.0[rip+4]
	mov	DWORD PTR -76[rbp], eax
	cmp	DWORD PTR -100[rbp], 3
	jne	.L13
	mov	rdi, QWORD PTR -112[rbp]
	mov	ecx, DWORD PTR -88[rbp]
	mov	edx, DWORD PTR -76[rbp]
	mov	esi, DWORD PTR -80[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	r8, rdi
	mov	rdi, rax
	call	print_answer_file@PLT
	jmp	.L14
.L13:
	mov	rcx, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -88[rbp]
	mov	esi, DWORD PTR -76[rbp]
	mov	eax, DWORD PTR -80[rbp]
	mov	edi, eax
	call	print_answer@PLT
.L14:
	mov	rsp, rbx
	mov	eax, 0
.L3:
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.local	counter_index.0
	.comm	counter_index.0,8,8
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
