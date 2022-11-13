	.file	"functions.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 N (\320\264\320\273\320\270\320\275\321\203 \320\270\321\201\320\272\320\276\320\274\320\276\320\271 \321\203\320\261\321\213\320\262\320\260\321\216\321\211\320\265\320\271 \320\277\320\276\321\201\320\273\320\265\320\264\320\276\320\262\320\260\321\202\320\265\320\273\321\214\320\275\320\276\321\201\321\202\320\270): "
.LC1:
	.string	"%d"
	.text
	.globl	get_N
	.type	get_N, @function
get_N:
.LFB6:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
.L3:
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 1
	jle	.L3
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 99
	jg	.L3
	mov	eax, DWORD PTR -12[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	get_N, .-get_N
	.section	.rodata
	.align 8
.LC2:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\264\320\273\320\270\320\275\321\203 c\321\202\321\200\320\276\320\272\320\270: "
	.text
	.globl	get_size_of_string
	.type	get_size_of_string, @function
get_size_of_string:
.LFB7:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L7
.L8:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L7:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 1
	jle	.L8
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 9999
	jg	.L8
	mov	eax, DWORD PTR -12[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	get_size_of_string, .-get_size_of_string
	.section	.rodata
	.align 8
.LC3:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\201\321\202\321\200\320\276\320\272\321\203 \321\200\320\260\320\267\320\274\320\265\321\200\320\260 [%d]: "
.LC4:
	.string	"%s"
	.text
	.globl	get_string
	.type	get_string, @function
get_string:
.LFB8:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	get_string, .-get_string
	.section	.rodata
	.align 8
.LC5:
	.string	"\320\235\320\260\321\207\320\270\320\275\320\260\320\265\320\274 \320\277\320\276\320\270\321\201\320\272 \320\277\320\265\321\200\320\262\320\276\320\271 \321\203\320\261\321\213\320\262\320\260\321\216\321\211\320\265\320\271 \320\277\320\276\321\201\320\273\320\265\320\264\320\276\320\262\320\260\321\202\320\265\320\273\321\214\320\275\320\276\321\201\321\202\320\270 \321\200\320\260\320\267\320\274\320\265\321\200\320\260 [%d]\n\n"
	.align 8
.LC6:
	.string	"\320\237\320\276\321\201\320\273\320\265\320\264\320\276\320\262\320\260\321\202\320\265\320\273\321\214\320\275\320\276\321\201\321\202\321\214 \320\270\320\267 [%d] \321\201\320\270\320\274\320\262\320\276\320\273\320\276\320\262 \320\275\320\260\320\271\320\264\320\265\320\275\320\260!\n"
	.text
	.globl	find_index_count
	.type	find_index_count, @function
find_index_count:
.LFB9:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	QWORD PTR -40[rbp], rcx
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
.L19:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jne	.L14
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L15
.L14:
	cmp	DWORD PTR -12[rbp], 0
	jne	.L16
	cmp	DWORD PTR -4[rbp], 0
	jle	.L16
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -12[rbp], 1
.L16:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jle	.L17
	add	DWORD PTR -12[rbp], 1
	jmp	.L18
.L17:
	mov	DWORD PTR -12[rbp], 0
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	nop
.L18:
	add	DWORD PTR -4[rbp], 1
.L13:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L19
.L15:
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, 4[rax]
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR [rdx], eax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	find_index_count, .-find_index_count
	.section	.rodata
	.align 8
.LC7:
	.string	"\320\235\320\270\321\207\320\265\320\263\320\276 \320\275\320\265 \320\275\320\260\320\271\320\264\320\265\320\275\320\276!"
.LC8:
	.string	"\320\236\321\202\320\262\320\265\321\202:\n[%d]: "
.LC9:
	.string	"\n-----------------------\n"
	.text
	.globl	print_answer
	.type	print_answer, @function
print_answer:
.LFB10:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	QWORD PTR -40[rbp], rcx
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	je	.L21
	lea	rax, .LC7[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L22
.L21:
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L23
.L24:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
.L23:
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jl	.L24
.L22:
	lea	rax, .LC9[rip]
	mov	rdi, rax
	call	puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	print_answer, .-print_answer
	.section	.rodata
.LC10:
	.string	"r"
	.align 8
.LC11:
	.string	"\320\244\320\260\320\271\320\273 \320\275\320\265 \320\276\320\261\320\275\320\260\321\200\321\203\320\266\320\265\320\275. \320\221\321\203\320\264\320\265\321\202 \321\201\320\276\320\267\320\264\320\260\320\275 \321\204\320\260\320\271\320\273 \321\201 \321\203\320\272\320\260\320\267\320\260\320\275\320\275\321\213\320\274 \320\270\320\274\320\265\320\275\320\265\320\274"
.LC12:
	.string	"wb+"
.LC13:
	.string	"%d; "
	.text
	.globl	get_N_file
	.type	get_N_file, @function
get_N_file:
.LFB11:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -20[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC10[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L26
	lea	rax, .LC11[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	rax, QWORD PTR -40[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC12[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L26
	mov	edi, 1
	call	exit@PLT
.L26:
	lea	rdx, -20[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, .LC13[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	eax, DWORD PTR -20[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	get_N_file, .-get_N_file
	.section	.rodata
.LC14:
	.string	"%d:"
	.text
	.globl	get_size_of_string_file
	.type	get_size_of_string_file, @function
get_size_of_string_file:
.LFB12:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -20[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC10[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -20[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, .LC13[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	lea	rdx, -20[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, .LC14[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	eax, DWORD PTR -20[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	get_size_of_string_file, .-get_size_of_string_file
	.section	.rodata
.LC15:
	.string	"%c"
	.text
	.globl	get_string_file
	.type	get_string_file, @function
get_string_file:
.LFB13:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -24[rbp], 0
	mov	rax, QWORD PTR -56[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC10[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -20[rbp], 0
	mov	BYTE PTR -25[rbp], 32
	lea	rdx, -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, .LC13[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	lea	rdx, -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, .LC14[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	jmp	.L33
.L35:
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -20[rbp], edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR -25[rbp]
	mov	BYTE PTR [rdx], al
.L33:
	lea	rdx, -25[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, .LC15[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	test	eax, eax
	jle	.L34
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L35
.L34:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	fclose@PLT
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L36
	call	__stack_chk_fail@PLT
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	get_string_file, .-get_string_file
	.section	.rodata
	.align 8
.LC16:
	.string	"\320\236\321\202\320\262\320\265\321\202 \320\262 \321\204\320\260\320\271\320\273\320\265 \320\262\321\213\320\262\320\276\320\264\320\260!"
.LC17:
	.string	"w+"
	.align 8
.LC18:
	.string	"\320\235\320\270\321\207\320\265\320\263\320\276 \320\275\320\265 \320\275\320\260\320\271\320\264\320\265\320\275\320\276!\n"
.LC19:
	.string	"[%d]: "
	.text
	.globl	print_answer_file
	.type	print_answer_file, @function
print_answer_file:
.LFB14:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	DWORD PTR -36[rbp], ecx
	mov	QWORD PTR -48[rbp], r8
	lea	rax, .LC16[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC17[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	je	.L38
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, rax
	mov	edx, 34
	mov	esi, 1
	lea	rax, .LC18[rip]
	mov	rdi, rax
	call	fwrite@PLT
	jmp	.L39
.L38:
	mov	edx, DWORD PTR -36[rbp]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, .LC19[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	fprintf@PLT
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L40
.L41:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	edi, eax
	call	fputc@PLT
	add	DWORD PTR -12[rbp], 1
.L40:
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	sub	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	jl	.L41
.L39:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	fclose@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	print_answer_file, .-print_answer_file
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
