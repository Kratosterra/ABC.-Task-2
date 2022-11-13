	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 N (\320\264\320\273\320\270\320\275\321\203 \320\270\321\201\320\272\320\276\320\274\320\276\320\271 \321\203\320\261\321\213\320\262\320\260\321\216\321\211\320\265\320\271 \320\277\320\276\321\201\320\273\320\265\320\264\320\276\320\262\320\260\321\202\320\265\320\273\321\214\320\275\320\276\321\201\321\202\320\270): "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\264\320\273\320\270\320\275\321\203 c\321\202\321\200\320\276\320\272\320\270: "
	.align 8
.LC3:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\201\321\202\321\200\320\276\320\272\321\203 \321\200\320\260\320\267\320\274\320\265\321\200\320\260 [%d]: "
.LC4:
	.string	"%s"
	.align 8
.LC5:
	.string	"\320\235\320\260\321\207\320\270\320\275\320\260\320\265\320\274 \320\277\320\276\320\270\321\201\320\272 \320\277\320\265\321\200\320\262\320\276\320\271 \321\203\320\261\321\213\320\262\320\260\321\216\321\211\320\265\320\271 \320\277\320\276\321\201\320\273\320\265\320\264\320\276\320\262\320\260\321\202\320\265\320\273\321\214\320\275\320\276\321\201\321\202\320\270 \321\200\320\260\320\267\320\274\320\265\321\200\320\260 [%d]\n\n"
	.align 8
.LC6:
	.string	"\320\237\320\276\321\201\320\273\320\265\320\264\320\276\320\262\320\260\321\202\320\265\320\273\321\214\320\275\320\276\321\201\321\202\321\214 \320\270\320\267 [%d] \321\201\320\270\320\274\320\262\320\276\320\273\320\276\320\262 \320\275\320\260\320\271\320\264\320\265\320\275\320\260!\n"
	.align 8
.LC7:
	.string	"\320\235\320\270\321\207\320\265\320\263\320\276 \320\275\320\265 \320\275\320\260\320\271\320\264\320\265\320\275\320\276!"
.LC8:
	.string	"\320\236\321\202\320\262\320\265\321\202:\n[%d]: "
.LC9:
	.string	"\n-----------------------\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 56
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rbx, rax
	mov	DWORD PTR -96[rbp], 0
	mov	DWORD PTR -92[rbp], 0
	mov	DWORD PTR -88[rbp], 0
	mov	DWORD PTR -84[rbp], 0
	jmp	.L2
.L3:
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -96[rbp]
	cmp	eax, 1
	jle	.L3
	mov	eax, DWORD PTR -96[rbp]
	cmp	eax, 99
	jg	.L3
	jmp	.L4
.L5:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -92[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L4:
	mov	eax, DWORD PTR -92[rbp]
	cmp	eax, 1
	jle	.L5
	mov	eax, DWORD PTR -92[rbp]
	cmp	eax, 9999
	jg	.L5
	mov	eax, DWORD PTR -92[rbp]
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
	mov	ecx, 16
	mov	edx, 0
	div	rcx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L6:
	cmp	rsp, rdx
	je	.L7
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L6
.L7:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L8
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L8:
	mov	rax, rsp
	add	rax, 0
	mov	QWORD PTR -64[rbp], rax
	mov	eax, DWORD PTR -92[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -96[rbp]
	mov	esi, eax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -80[rbp], 0
	jmp	.L9
.L18:
	mov	eax, DWORD PTR -96[rbp]
	cmp	DWORD PTR -88[rbp], eax
	jne	.L10
	mov	eax, DWORD PTR -96[rbp]
	mov	esi, eax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L11
.L10:
	cmp	DWORD PTR -88[rbp], 0
	jne	.L12
	cmp	DWORD PTR -80[rbp], 0
	jle	.L12
	mov	eax, DWORD PTR -80[rbp]
	mov	DWORD PTR -84[rbp], eax
	add	DWORD PTR -88[rbp], 1
.L12:
	mov	eax, DWORD PTR -80[rbp]
	sub	eax, 1
	mov	rdx, QWORD PTR -64[rbp]
	cdqe
	movzx	ecx, BYTE PTR [rdx+rax]
	mov	rdx, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -80[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	cmp	cl, al
	jle	.L13
	add	DWORD PTR -88[rbp], 1
	mov	eax, DWORD PTR -92[rbp]
	sub	eax, 1
	cmp	DWORD PTR -80[rbp], eax
	jne	.L15
	jmp	.L24
.L13:
	mov	DWORD PTR -88[rbp], 0
	mov	eax, DWORD PTR -80[rbp]
	mov	DWORD PTR -84[rbp], eax
	jmp	.L15
.L24:
	mov	eax, DWORD PTR -96[rbp]
	cmp	DWORD PTR -88[rbp], eax
	jne	.L16
	mov	eax, DWORD PTR -96[rbp]
	mov	esi, eax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L11
.L16:
	lea	rax, .LC7[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 0
	jmp	.L17
.L15:
	add	DWORD PTR -80[rbp], 1
.L9:
	mov	eax, DWORD PTR -92[rbp]
	cmp	DWORD PTR -80[rbp], eax
	jl	.L18
.L11:
	mov	eax, DWORD PTR -96[rbp]
	cmp	DWORD PTR -88[rbp], eax
	je	.L19
	lea	rax, .LC7[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 0
	jmp	.L17
.L19:
	mov	eax, DWORD PTR -96[rbp]
	mov	esi, eax
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -84[rbp]
	sub	eax, 1
	mov	DWORD PTR -76[rbp], eax
	jmp	.L20
.L21:
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -76[rbp], 1
.L20:
	mov	edx, DWORD PTR -84[rbp]
	mov	eax, DWORD PTR -88[rbp]
	add	eax, edx
	sub	eax, 1
	cmp	DWORD PTR -76[rbp], eax
	jl	.L21
	lea	rax, .LC9[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	rsp, rbx
	mov	eax, 0
	jmp	.L22
.L17:
	mov	rsp, rbx
.L22:
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
