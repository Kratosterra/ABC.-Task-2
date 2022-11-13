	.file	"main_g_X444.c"
	.intel_syntax noprefix
# GNU C17 (Ubuntu 11.3.0-1ubuntu1~22.04) version 11.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O3 -fno-asynchronous-unwind-tables -fcf-protection=none -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 N (\320\264\320\273\320\270\320\275\321\203 \320\270\321\201\320\272\320\276\320\274\320\276\320\271 \321\203\320\261\321\213\320\262\320\260\321\216\321\211\320\265\320\271 \320\277\320\276\321\201\320\273\320\265\320\264\320\276\320\262\320\260\321\202\320\265\320\273\321\214\320\275\320\276\321\201\321\202\320\270): "
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%d"
	.text
	.p2align 4
	.globl	get_N
	.type	get_N, @function
get_N:
	push	r12	#
	lea	r12, .LC0[rip]	# tmp92,
	push	rbp	#
	push	rbx	#
	lea	rbx, .LC1[rip]	# tmp93,
	sub	rsp, 16	#,
# main_g_X444.c:5: {
	mov	rax, QWORD PTR fs:40	# tmp95, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 8[rsp], rax	# D.2974, tmp95
	xor	eax, eax	# tmp95
# main_g_X444.c:6:     int N = 0;
	mov	DWORD PTR 4[rsp], 0	# N,
	lea	rbp, 4[rsp]	# tmp94,
	.p2align 4,,10
	.p2align 3
.L2:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	rsi, r12	#, tmp92
	mov	edi, 1	#,
	xor	eax, eax	#
	call	__printf_chk@PLT	#
# main_g_X444.c:10:         scanf("%d", &N);
	mov	rsi, rbp	#, tmp94
	mov	rdi, rbx	#, tmp93
	xor	eax, eax	#
	call	__isoc99_scanf@PLT	#
# main_g_X444.c:7:     while (N <= 1 || N >= 100)
	mov	eax, DWORD PTR 4[rsp]	# <retval>, N
	lea	edx, -2[rax]	# tmp89,
	cmp	edx, 97	# tmp89,
	ja	.L2	#,
# main_g_X444.c:13: }
	mov	rdx, QWORD PTR 8[rsp]	# tmp96, D.2974
	sub	rdx, QWORD PTR fs:40	# tmp96, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L7	#,
	add	rsp, 16	#,
	pop	rbx	#
	pop	rbp	#
	pop	r12	#
	ret	
.L7:
	call	__stack_chk_fail@PLT	#
	.size	get_N, .-get_N
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\264\320\273\320\270\320\275\321\203 c\321\202\321\200\320\276\320\272\320\270: "
	.text
	.p2align 4
	.globl	get_size_of_string
	.type	get_size_of_string, @function
get_size_of_string:
	push	r12	#
	lea	r12, .LC2[rip]	# tmp93,
	push	rbp	#
	push	rbx	#
	lea	rbx, .LC1[rip]	# tmp92,
	sub	rsp, 16	#,
# main_g_X444.c:16: {
	mov	rax, QWORD PTR fs:40	# tmp95, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 8[rsp], rax	# D.2982, tmp95
	xor	eax, eax	# tmp95
# main_g_X444.c:17:     int size_of_string = 0;
	mov	DWORD PTR 4[rsp], 0	# size_of_string,
	lea	rbp, 4[rsp]	# tmp94,
	.p2align 4,,10
	.p2align 3
.L9:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	rsi, r12	#, tmp93
	mov	edi, 1	#,
	xor	eax, eax	#
	call	__printf_chk@PLT	#
# main_g_X444.c:21:         scanf("%d", &size_of_string);
	mov	rsi, rbp	#, tmp94
	mov	rdi, rbx	#, tmp92
	xor	eax, eax	#
	call	__isoc99_scanf@PLT	#
# main_g_X444.c:18:     while (size_of_string <= 1 || size_of_string >= 10000)
	mov	eax, DWORD PTR 4[rsp]	# <retval>, size_of_string
	lea	edx, -2[rax]	# tmp89,
	cmp	edx, 9997	# tmp89,
	ja	.L9	#,
# main_g_X444.c:24: }
	mov	rdx, QWORD PTR 8[rsp]	# tmp96, D.2982
	sub	rdx, QWORD PTR fs:40	# tmp96, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L13	#,
	add	rsp, 16	#,
	pop	rbx	#
	pop	rbp	#
	pop	r12	#
	ret	
.L13:
	call	__stack_chk_fail@PLT	#
	.size	get_size_of_string, .-get_size_of_string
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\201\321\202\321\200\320\276\320\272\321\203 \321\200\320\260\320\267\320\274\320\265\321\200\320\260 [%d]: "
	.section	.rodata.str1.1
.LC4:
	.string	"%s"
	.text
	.p2align 4
	.globl	get_string
	.type	get_string, @function
get_string:
	push	rbp	#
# main_g_X444.c:27: {
	mov	edx, esi	# size_of_string, tmp87
	mov	rbp, rdi	# str, tmp86
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rsi, .LC3[rip]	# tmp84,
	mov	edi, 1	#,
	xor	eax, eax	#
	call	__printf_chk@PLT	#
# main_g_X444.c:29:     scanf("%s", str);
	mov	rsi, rbp	#, str
	lea	rdi, .LC4[rip]	# tmp85,
	xor	eax, eax	#
# main_g_X444.c:30: }
	pop	rbp	#
# main_g_X444.c:29:     scanf("%s", str);
	jmp	__isoc99_scanf@PLT	#
	.size	get_string, .-get_string
	.p2align 4
	.globl	find_index_count
	.type	find_index_count, @function
find_index_count:
	push	rbx	#
# main_g_X444.c:38:         if (counter == N)
	test	edx, edx	# N
	je	.L23	#,
	test	esi, esi	# size_of_string
	jle	.L23	#,
	mov	r10, rdi	# str, tmp113
# main_g_X444.c:35:     int index_start = 0;
	xor	r11d, r11d	# index_start
# main_g_X444.c:36:     for (int i = 0; i < size_of_string; i++)
	xor	edi, edi	# i
# main_g_X444.c:34:     int counter = 0;
	xor	r8d, r8d	# counter
	jmp	.L21	#
	.p2align 4,,10
	.p2align 3
.L19:
# main_g_X444.c:52:             counter++;
	add	r8d, 1	# counter,
# main_g_X444.c:38:         if (counter == N)
	cmp	edx, r8d	# N, counter
	je	.L17	#,
	cmp	esi, r9d	# size_of_string, _63
	jle	.L17	#,
	mov	edi, r9d	# i, _63
.L21:
# main_g_X444.c:42:         if (counter == 0)
	test	r8d, r8d	# counter
	je	.L20	#,
.L18:
# main_g_X444.c:50:         if (str[i - 1] > str[i])
	movsx	rax, edi	# _1, i
# main_g_X444.c:36:     for (int i = 0; i < size_of_string; i++)
	lea	r9d, 1[rdi]	# _63,
# main_g_X444.c:50:         if (str[i - 1] > str[i])
	movzx	ebx, BYTE PTR [r10+rax]	# tmp119, *_6
	cmp	BYTE PTR -1[r10+rax], bl	# *_3, tmp119
	jg	.L19	#,
# main_g_X444.c:38:         if (counter == N)
	mov	r11d, edi	# index_start, i
	cmp	esi, r9d	# size_of_string, _63
	jle	.L25	#,
# main_g_X444.c:36:     for (int i = 0; i < size_of_string; i++)
	mov	edi, r9d	# i, _63
.L20:
# main_g_X444.c:44:             if (i > 0)
	test	edi, edi	# i
	cmovne	r11d, edi	# index_start,, index_start, i
	cmp	edi, 1	# i,
	sbb	r8d, r8d	# counter
	add	r8d, 1	# counter,
	jmp	.L18	#
	.p2align 4,,10
	.p2align 3
.L25:
# main_g_X444.c:38:         if (counter == N)
	xor	r8d, r8d	# counter
.L17:
# main_g_X444.c:61:     counter_index[0] = index_start;
	movd	xmm0, r11d	# tmp112, index_start
	movd	xmm1, r8d	# counter, counter
# main_g_X444.c:63: }
	pop	rbx	#
# main_g_X444.c:61:     counter_index[0] = index_start;
	punpckldq	xmm0, xmm1	# tmp112, counter
	movq	QWORD PTR [rcx], xmm0	# MEM <vector(2) int> [(int *)counter_index_22(D)], tmp112
# main_g_X444.c:63: }
	ret	
	.p2align 4,,10
	.p2align 3
.L23:
# main_g_X444.c:35:     int index_start = 0;
	xor	r11d, r11d	# index_start
# main_g_X444.c:34:     int counter = 0;
	xor	r8d, r8d	# counter
	jmp	.L17	#
	.size	find_index_count, .-find_index_count
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"\320\235\320\270\321\207\320\265\320\263\320\276 \320\275\320\265 \320\275\320\260\320\271\320\264\320\265\320\275\320\276!"
	.section	.rodata.str1.1
.LC6:
	.string	"\320\236\321\202\320\262\320\265\321\202:\n[%d]: "
.LC7:
	.string	"\n-----------------------\n"
	.text
	.p2align 4
	.globl	print_answer
	.type	print_answer, @function
print_answer:
	push	r13	#
	push	r12	#
	push	rbp	#
	push	rbx	#
	sub	rsp, 8	#,
# main_g_X444.c:67:     if (counter != N)
	cmp	esi, edx	# counter, tmp100
	je	.L29	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rdi, .LC5[rip]	# tmp93,
	call	puts@PLT	#
.L30:
# main_g_X444.c:80: }
	add	rsp, 8	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rdi, .LC7[rip]	# tmp97,
# main_g_X444.c:80: }
	pop	rbx	#
	pop	rbp	#
	pop	r12	#
	pop	r13	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	jmp	puts@PLT	#
	.p2align 4,,10
	.p2align 3
.L29:
	mov	r13d, edi	# index_start, tmp98
	mov	r12d, esi	# counter, tmp99
	mov	edx, esi	#, counter
	mov	edi, 1	#,
	lea	rsi, .LC6[rip]	# tmp94,
	xor	eax, eax	#
# main_g_X444.c:74:         for (int i = index_start - 1; i < index_start + counter - 1; i++)
	lea	ebx, -1[r13]	# i,
	mov	rbp, rcx	# str, tmp101
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# main_g_X444.c:74:         for (int i = index_start - 1; i < index_start + counter - 1; i++)
	lea	r13d, -1[r13+r12]	# _24,
# main_g_X444.c:74:         for (int i = index_start - 1; i < index_start + counter - 1; i++)
	test	r12d, r12d	# counter
	jle	.L30	#,
	movsx	rbx, ebx	# ivtmp.50, i
	.p2align 4,,10
	.p2align 3
.L32:
# main_g_X444.c:76:             printf("%c", *(str + i));
	movsx	edi, BYTE PTR 0[rbp+rbx]	# MEM[(char *)str_15(D) + ivtmp.50_28 * 1], MEM[(char *)str_15(D) + ivtmp.50_28 * 1]
# main_g_X444.c:74:         for (int i = index_start - 1; i < index_start + counter - 1; i++)
	add	rbx, 1	# ivtmp.50,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	putchar@PLT	#
# main_g_X444.c:74:         for (int i = index_start - 1; i < index_start + counter - 1; i++)
	cmp	r13d, ebx	# _24, ivtmp.50
	jg	.L32	#,
	jmp	.L30	#
	.size	print_answer, .-print_answer
	.section	.rodata.str1.1
.LC8:
	.string	"r"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"\320\244\320\260\320\271\320\273 \320\275\320\265 \320\276\320\261\320\275\320\260\321\200\321\203\320\266\320\265\320\275. \320\221\321\203\320\264\320\265\321\202 \321\201\320\276\320\267\320\264\320\260\320\275 \321\204\320\260\320\271\320\273 \321\201 \321\203\320\272\320\260\320\267\320\260\320\275\320\275\321\213\320\274 \320\270\320\274\320\265\320\275\320\265\320\274"
	.section	.rodata.str1.1
.LC10:
	.string	"wb+"
.LC11:
	.string	"%d; "
	.text
	.p2align 4
	.globl	get_N_file
	.type	get_N_file, @function
get_N_file:
	push	rbp	#
# main_g_X444.c:85:     FILE *f = fopen(argv[1], "r");
	lea	rsi, .LC8[rip]	# tmp89,
# main_g_X444.c:83: {
	push	rbx	#
	mov	rbx, rdi	# argv, tmp99
	sub	rsp, 24	#,
# main_g_X444.c:85:     FILE *f = fopen(argv[1], "r");
	mov	rdi, QWORD PTR 8[rdi]	# MEM[(char * *)argv_7(D) + 8B], MEM[(char * *)argv_7(D) + 8B]
# main_g_X444.c:83: {
	mov	rax, QWORD PTR fs:40	# tmp102, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 8[rsp], rax	# D.3016, tmp102
	xor	eax, eax	# tmp102
# main_g_X444.c:84:     int N = 0;
	mov	DWORD PTR 4[rsp], 0	# N,
# main_g_X444.c:85:     FILE *f = fopen(argv[1], "r");
	call	fopen@PLT	#
# main_g_X444.c:86:     if(!f){ 
	test	rax, rax	# f
	je	.L40	#,
	mov	rbp, rax	# f, tmp100
.L36:
# main_g_X444.c:92:     fscanf(f, "%d; ", &N);
	lea	rdx, 4[rsp]	# tmp95,
	lea	rsi, .LC11[rip]	# tmp96,
	mov	rdi, rbp	#, f
	xor	eax, eax	#
	call	__isoc99_fscanf@PLT	#
# main_g_X444.c:93:     fclose(f);
	mov	rdi, rbp	#, f
	call	fclose@PLT	#
# main_g_X444.c:94:     return N;
	mov	eax, DWORD PTR 4[rsp]	# <retval>, N
# main_g_X444.c:95: }
	mov	rdx, QWORD PTR 8[rsp]	# tmp103, D.3016
	sub	rdx, QWORD PTR fs:40	# tmp103, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L41	#,
	add	rsp, 24	#,
	pop	rbx	#
	pop	rbp	#
	ret	
.L40:
# main_g_X444.c:87:         puts("Файл не обнаружен. Будет создан файл с указанным именем");
	lea	rdi, .LC9[rip]	# tmp91,
	call	puts@PLT	#
# main_g_X444.c:88:         if(!(f = fopen(argv[1],"wb+"))) {
	mov	rdi, QWORD PTR 8[rbx]	# MEM[(char * *)argv_7(D) + 8B], MEM[(char * *)argv_7(D) + 8B]
	lea	rsi, .LC10[rip]	# tmp93,
	call	fopen@PLT	#
	mov	rbp, rax	# f, tmp101
# main_g_X444.c:88:         if(!(f = fopen(argv[1],"wb+"))) {
	test	rax, rax	# f
	jne	.L36	#,
# main_g_X444.c:89:             exit(1);
	mov	edi, 1	#,
	call	exit@PLT	#
.L41:
# main_g_X444.c:95: }
	call	__stack_chk_fail@PLT	#
	.size	get_N_file, .-get_N_file
	.section	.rodata.str1.1
.LC12:
	.string	"%d:"
	.text
	.p2align 4
	.globl	get_size_of_string_file
	.type	get_size_of_string_file, @function
get_size_of_string_file:
	push	r12	#
# main_g_X444.c:100:     FILE *f = fopen(argv[1], "r");
	lea	rsi, .LC8[rip]	# tmp88,
# main_g_X444.c:98: {
	push	rbp	#
	sub	rsp, 24	#,
# main_g_X444.c:100:     FILE *f = fopen(argv[1], "r");
	mov	rdi, QWORD PTR 8[rdi]	# MEM[(char * *)argv_4(D) + 8B], MEM[(char * *)argv_4(D) + 8B]
# main_g_X444.c:98: {
	mov	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 8[rsp], rax	# D.3026, tmp98
	xor	eax, eax	# tmp98
# main_g_X444.c:101:     fscanf(f, "%d; ", &size_of_string);
	lea	r12, 4[rsp]	# tmp90,
# main_g_X444.c:99:     int size_of_string = 0;
	mov	DWORD PTR 4[rsp], 0	# size_of_string,
# main_g_X444.c:100:     FILE *f = fopen(argv[1], "r");
	call	fopen@PLT	#
# main_g_X444.c:101:     fscanf(f, "%d; ", &size_of_string);
	mov	rdx, r12	#, tmp90
	lea	rsi, .LC11[rip]	# tmp91,
# main_g_X444.c:100:     FILE *f = fopen(argv[1], "r");
	mov	rbp, rax	# tmp89, tmp97
# main_g_X444.c:101:     fscanf(f, "%d; ", &size_of_string);
	mov	rdi, rax	#, tmp89
	xor	eax, eax	#
	call	__isoc99_fscanf@PLT	#
# main_g_X444.c:102:     fscanf(f, "%d:", &size_of_string);
	mov	rdx, r12	#, tmp90
	mov	rdi, rbp	#, tmp89
	xor	eax, eax	#
	lea	rsi, .LC12[rip]	# tmp93,
	call	__isoc99_fscanf@PLT	#
# main_g_X444.c:103:     fclose(f);
	mov	rdi, rbp	#, tmp89
	call	fclose@PLT	#
# main_g_X444.c:104:     return size_of_string;
	mov	eax, DWORD PTR 4[rsp]	# <retval>, size_of_string
# main_g_X444.c:105: }
	mov	rdx, QWORD PTR 8[rsp]	# tmp99, D.3026
	sub	rdx, QWORD PTR fs:40	# tmp99, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L45	#,
	add	rsp, 24	#,
	pop	rbp	#
	pop	r12	#
	ret	
.L45:
	call	__stack_chk_fail@PLT	#
	.size	get_size_of_string_file, .-get_size_of_string_file
	.section	.rodata.str1.1
.LC13:
	.string	"%c"
	.text
	.p2align 4
	.globl	get_string_file
	.type	get_string_file, @function
get_string_file:
	push	r15	#
	push	r14	#
# main_g_X444.c:115:     while (fscanf(f, "%c", &ch) > 0 && i < size)
	xor	r14d, r14d	# ivtmp.66
# main_g_X444.c:108: {
	push	r13	#
	push	r12	#
	push	rbp	#
	mov	rbp, rdi	# str, tmp112
	push	rbx	#
	mov	ebx, esi	# size, tmp113
# main_g_X444.c:110:     FILE *f = fopen(argv[1], "r");
	lea	rsi, .LC8[rip]	# tmp96,
# main_g_X444.c:108: {
	sub	rsp, 24	#,
# main_g_X444.c:110:     FILE *f = fopen(argv[1], "r");
	mov	rdi, QWORD PTR 8[rdx]	# MEM[(char * *)argv_10(D) + 8B], MEM[(char * *)argv_10(D) + 8B]
# main_g_X444.c:108: {
	mov	rax, QWORD PTR fs:40	# tmp117, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 8[rsp], rax	# D.3041, tmp117
	xor	eax, eax	# tmp117
# main_g_X444.c:113:     fscanf(f, "%d; ", &N);
	lea	r12, 4[rsp]	# tmp98,
# main_g_X444.c:109:     int N = 0;
	mov	DWORD PTR 4[rsp], 0	# N,
	lea	r13, 3[rsp]	# tmp111,
# main_g_X444.c:110:     FILE *f = fopen(argv[1], "r");
	call	fopen@PLT	#
# main_g_X444.c:113:     fscanf(f, "%d; ", &N);
	mov	rdx, r12	#, tmp98
# main_g_X444.c:112:     char ch = 32;
	mov	BYTE PTR 3[rsp], 32	# ch,
# main_g_X444.c:113:     fscanf(f, "%d; ", &N);
	lea	rsi, .LC11[rip]	# tmp99,
	mov	rdi, rax	#, f
# main_g_X444.c:110:     FILE *f = fopen(argv[1], "r");
	mov	r15, rax	# f, tmp115
# main_g_X444.c:113:     fscanf(f, "%d; ", &N);
	xor	eax, eax	#
	call	__isoc99_fscanf@PLT	#
# main_g_X444.c:114:     fscanf(f, "%d:", &N);
	mov	rdx, r12	#, tmp98
	mov	rdi, r15	#, f
	xor	eax, eax	#
	lea	rsi, .LC12[rip]	# tmp101,
	lea	r12, .LC13[rip]	# tmp110,
	call	__isoc99_fscanf@PLT	#
# main_g_X444.c:115:     while (fscanf(f, "%c", &ch) > 0 && i < size)
	jmp	.L47	#
	.p2align 4,,10
	.p2align 3
.L56:
# main_g_X444.c:115:     while (fscanf(f, "%c", &ch) > 0 && i < size)
	test	eax, eax	# _5
	jle	.L51	#,
# main_g_X444.c:117:         str[i++] = ch;
	movzx	eax, BYTE PTR 3[rsp]	# ch, ch
	mov	BYTE PTR 0[rbp+r14], al	# MEM[(char *)str_19(D) + ivtmp.66_29 * 1], ch
	add	r14, 1	# ivtmp.66,
.L47:
# main_g_X444.c:115:     while (fscanf(f, "%c", &ch) > 0 && i < size)
	xor	eax, eax	#
	mov	rdx, r13	#, tmp111
	mov	rsi, r12	#, tmp110
	mov	rdi, r15	#, f
	call	__isoc99_fscanf@PLT	#
# main_g_X444.c:115:     while (fscanf(f, "%c", &ch) > 0 && i < size)
	cmp	ebx, r14d	# size, ivtmp.66
	jg	.L56	#,
.L51:
# main_g_X444.c:119:     fclose(f);
	mov	rdi, r15	#, f
	call	fclose@PLT	#
# main_g_X444.c:120: }
	mov	rax, QWORD PTR 8[rsp]	# tmp118, D.3041
	sub	rax, QWORD PTR fs:40	# tmp118, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L57	#,
	add	rsp, 24	#,
	pop	rbx	#
	pop	rbp	#
	pop	r12	#
	pop	r13	#
	pop	r14	#
	pop	r15	#
	ret	
.L57:
	call	__stack_chk_fail@PLT	#
	.size	get_string_file, .-get_string_file
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"\320\236\321\202\320\262\320\265\321\202 \320\262 \321\204\320\260\320\271\320\273\320\265 \320\262\321\213\320\262\320\276\320\264\320\260!"
	.section	.rodata.str1.1
.LC15:
	.string	"w+"
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"\320\235\320\270\321\207\320\265\320\263\320\276 \320\275\320\265 \320\275\320\260\320\271\320\264\320\265\320\275\320\276!\n"
	.section	.rodata.str1.1
.LC17:
	.string	"[%d]: "
	.text
	.p2align 4
	.globl	print_answer_file
	.type	print_answer_file, @function
print_answer_file:
	push	r14	#
	mov	r14d, edx	# counter, tmp106
	push	r13	#
	mov	r13d, esi	# index_start, tmp105
	push	r12	#
	mov	r12, rdi	# str, tmp104
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rdi, .LC14[rip]	# tmp96,
# main_g_X444.c:123: {
	push	rbp	#
	mov	rbp, r8	# argv, tmp108
	push	rbx	#
# main_g_X444.c:123: {
	mov	ebx, ecx	# N, tmp107
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	puts@PLT	#
# main_g_X444.c:125:     FILE *f = fopen(argv[2], "w+");
	mov	rdi, QWORD PTR 16[rbp]	# MEM[(char * *)argv_12(D) + 16B], MEM[(char * *)argv_12(D) + 16B]
	lea	rsi, .LC15[rip]	# tmp98,
	call	fopen@PLT	#
	mov	rbp, rax	# f, tmp109
# main_g_X444.c:126:     if (counter != N)
	cmp	r14d, ebx	# counter, N
	je	.L59	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:105:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	rcx, rax	#, f
	mov	edx, 34	#,
	mov	esi, 1	#,
	lea	rdi, .LC16[rip]	# tmp100,
	call	fwrite@PLT	#
.L60:
# main_g_X444.c:139: }
	pop	rbx	#
# main_g_X444.c:138:     fclose(f);
	mov	rdi, rbp	#, f
# main_g_X444.c:139: }
	pop	rbp	#
	pop	r12	#
	pop	r13	#
	pop	r14	#
# main_g_X444.c:138:     fclose(f);
	jmp	fclose@PLT	#
	.p2align 4,,10
	.p2align 3
.L59:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:105:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	rdi, rax	#, f
	mov	ecx, r14d	#, counter
	lea	rdx, .LC17[rip]	# tmp101,
	xor	eax, eax	#
	mov	esi, 1	#,
# main_g_X444.c:133:         for (int i = index_start - 1; i < index_start + counter - 1; i++)
	lea	ebx, -1[r13]	# i,
# main_g_X444.c:133:         for (int i = index_start - 1; i < index_start + counter - 1; i++)
	lea	r13d, -1[r13+r14]	# _29,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:105:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	call	__fprintf_chk@PLT	#
# main_g_X444.c:133:         for (int i = index_start - 1; i < index_start + counter - 1; i++)
	test	r14d, r14d	# counter
	jle	.L60	#,
	movsx	rbx, ebx	# ivtmp.78, i
	.p2align 4,,10
	.p2align 3
.L62:
# main_g_X444.c:135:             fprintf(f, "%c", *(str + i));
	movsx	edi, BYTE PTR [r12+rbx]	# MEM[(char *)str_19(D) + ivtmp.78_33 * 1], MEM[(char *)str_19(D) + ivtmp.78_33 * 1]
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:105:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	rsi, rbp	#, f
# main_g_X444.c:133:         for (int i = index_start - 1; i < index_start + counter - 1; i++)
	add	rbx, 1	# ivtmp.78,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:105:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	call	fputc@PLT	#
# main_g_X444.c:133:         for (int i = index_start - 1; i < index_start + counter - 1; i++)
	cmp	r13d, ebx	# _29, ivtmp.78
	jg	.L62	#,
# main_g_X444.c:139: }
	pop	rbx	#
# main_g_X444.c:138:     fclose(f);
	mov	rdi, rbp	#, f
# main_g_X444.c:139: }
	pop	rbp	#
	pop	r12	#
	pop	r13	#
	pop	r14	#
# main_g_X444.c:138:     fclose(f);
	jmp	fclose@PLT	#
	.size	print_answer_file, .-print_answer_file
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"\320\241\320\263\320\265\320\275\320\265\321\200\320\270\321\200\320\276\320\262\320\260\320\275\320\275\320\276 \321\207\320\270\321\201\320\273\320\276 N = %d\n"
	.text
	.p2align 4
	.globl	generate_N
	.type	generate_N, @function
generate_N:
	push	r12	#
# main_g_X444.c:143:     srand(time(0));
	xor	edi, edi	#
	call	time@PLT	#
	mov	rdi, rax	# _1, tmp100
	xor	eax, eax	#
	call	srand@PLT	#
# main_g_X444.c:144:     int N = 2 + rand() % 19;
	xor	eax, eax	#
	call	rand@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rsi, .LC18[rip]	# tmp98,
	mov	edi, 1	#,
# main_g_X444.c:144:     int N = 2 + rand() % 19;
	movsx	rdx, eax	# _2, _2
	mov	ecx, eax	# tmp91, _2
	imul	rdx, rdx, 1808407283	# tmp88, _2,
	sar	ecx, 31	# tmp91,
	sar	rdx, 35	# tmp90,
	sub	edx, ecx	# tmp86, tmp91
	lea	ecx, [rdx+rdx*8]	# tmp94,
	lea	edx, [rdx+rcx*2]	# tmp96,
	sub	eax, edx	# tmp97, tmp96
# main_g_X444.c:144:     int N = 2 + rand() % 19;
	lea	r12d, 2[rax]	# <retval>,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	xor	eax, eax	#
	mov	edx, r12d	#, <retval>
	call	__printf_chk@PLT	#
# main_g_X444.c:147: }
	mov	eax, r12d	#, <retval>
	pop	r12	#
	ret	
	.size	generate_N, .-generate_N
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"\320\241\320\263\320\265\320\275\320\265\321\200\320\270\321\200\320\276\320\262\320\260\320\275 \321\200\320\260\320\267\320\274\320\265\321\200 \321\201\321\202\321\200\320\276\320\272\320\270 = %d\n"
	.text
	.p2align 4
	.globl	generate_size_of_string
	.type	generate_size_of_string, @function
generate_size_of_string:
	push	r12	#
# main_g_X444.c:151:     srand(time(0));
	xor	edi, edi	#
	call	time@PLT	#
	mov	rdi, rax	# _1, tmp96
	xor	eax, eax	#
	call	srand@PLT	#
# main_g_X444.c:152:     int size = 20 + rand() % 10000;
	xor	eax, eax	#
	call	rand@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rsi, .LC19[rip]	# tmp94,
	mov	edi, 1	#,
# main_g_X444.c:152:     int size = 20 + rand() % 10000;
	movsx	rdx, eax	# _2, _2
	mov	ecx, eax	# tmp91, _2
	imul	rdx, rdx, 1759218605	# tmp88, _2,
	sar	ecx, 31	# tmp91,
	sar	rdx, 44	# tmp90,
	sub	edx, ecx	# tmp86, tmp91
	imul	edx, edx, 10000	# tmp92, tmp86,
	sub	eax, edx	# tmp93, tmp92
# main_g_X444.c:152:     int size = 20 + rand() % 10000;
	lea	r12d, 20[rax]	# <retval>,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	xor	eax, eax	#
	mov	edx, r12d	#, <retval>
	call	__printf_chk@PLT	#
# main_g_X444.c:155: }
	mov	eax, r12d	#, <retval>
	pop	r12	#
	ret	
	.size	generate_size_of_string, .-generate_size_of_string
	.section	.rodata.str1.1
.LC20:
	.string	"C\321\202\321\200\320\276\320\272\320\260 [%d]: "
	.text
	.p2align 4
	.globl	generate_string
	.type	generate_string, @function
generate_string:
	push	rbp	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	edx, esi	#, size_of_string
# main_g_X444.c:158: {
	mov	ebp, esi	# size_of_string, tmp113
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	xor	eax, eax	#
# main_g_X444.c:158: {
	push	rbx	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rsi, .LC20[rip]	# tmp98,
# main_g_X444.c:158: {
	mov	rbx, rdi	# str, tmp112
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	edi, 1	#,
# main_g_X444.c:158: {
	sub	rsp, 8	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# main_g_X444.c:161:     for (int i = 0; i < size_of_string; i++)
	test	ebp, ebp	# size_of_string
	jle	.L70	#,
	lea	eax, -1[rbp]	# tmp101,
	lea	rbp, 1[rbx+rax]	# _30,
	.p2align 4,,10
	.p2align 3
.L71:
# main_g_X444.c:163:         ch = (char)(33 + rand() % (127 - 33));
	xor	eax, eax	#
# main_g_X444.c:161:     for (int i = 0; i < size_of_string; i++)
	add	rbx, 1	# ivtmp.94,
# main_g_X444.c:163:         ch = (char)(33 + rand() % (127 - 33));
	call	rand@PLT	#
# main_g_X444.c:163:         ch = (char)(33 + rand() % (127 - 33));
	movsx	rdx, eax	# _1, _1
	mov	ecx, eax	# tmp108, _1
	imul	rdx, rdx, -1370734243	# tmp104, _1,
	sar	ecx, 31	# tmp108,
	shr	rdx, 32	# tmp105,
	add	edx, eax	# tmp106, _1
	sar	edx, 6	# tmp107,
	sub	edx, ecx	# tmp102, tmp108
	imul	edx, edx, 94	# tmp109, tmp102,
	sub	eax, edx	# tmp110, tmp109
# main_g_X444.c:163:         ch = (char)(33 + rand() % (127 - 33));
	add	eax, 33	# ch,
# main_g_X444.c:164:         str[i] = ch;
	mov	BYTE PTR -1[rbx], al	# MEM[(char *)_8], ch
# main_g_X444.c:165:         printf("%c", ch);
	movsx	edi, al	# ch, ch
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	putchar@PLT	#
# main_g_X444.c:161:     for (int i = 0; i < size_of_string; i++)
	cmp	rbx, rbp	# ivtmp.94, _30
	jne	.L71	#,
.L70:
# main_g_X444.c:168: }
	add	rsp, 8	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	edi, 10	#,
# main_g_X444.c:168: }
	pop	rbx	#
	pop	rbp	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	jmp	putchar@PLT	#
	.size	generate_string, .-generate_string
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\207\320\270\321\201\320\273\320\276 (1 \320\270\320\273\320\270 2): "
	.text
	.p2align 4
	.globl	get_type_of_input
	.type	get_type_of_input, @function
get_type_of_input:
	push	r12	#
	lea	r12, .LC21[rip]	# tmp94,
	push	rbp	#
	push	rbx	#
	lea	rbx, .LC1[rip]	# tmp95,
	sub	rsp, 16	#,
# main_g_X444.c:171: {
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 8[rsp], rax	# D.3081, tmp97
	xor	eax, eax	# tmp97
# main_g_X444.c:172:     int t = 0;
	mov	DWORD PTR 4[rsp], 0	# t,
	lea	rbp, 4[rsp]	# tmp96,
	.p2align 4,,10
	.p2align 3
.L75:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	rsi, r12	#, tmp94
	mov	edi, 1	#,
	xor	eax, eax	#
	call	__printf_chk@PLT	#
# main_g_X444.c:176:         scanf("%d", &t);
	mov	rsi, rbp	#, tmp96
	mov	rdi, rbx	#, tmp95
	xor	eax, eax	#
	call	__isoc99_scanf@PLT	#
# main_g_X444.c:173:     while (t <= 0 || t > 2)
	mov	eax, DWORD PTR 4[rsp]	# tmp100, t
	sub	eax, 1	# tmp90,
	cmp	eax, 1	# tmp90,
	ja	.L75	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	edi, 10	#,
	call	putchar@PLT	#
# main_g_X444.c:179:     return t;
	mov	eax, DWORD PTR 4[rsp]	# <retval>, t
# main_g_X444.c:180: }
	mov	rdx, QWORD PTR 8[rsp]	# tmp98, D.3081
	sub	rdx, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L79	#,
	add	rsp, 16	#,
	pop	rbx	#
	pop	rbp	#
	pop	r12	#
	ret	
.L79:
	call	__stack_chk_fail@PLT	#
	.size	get_type_of_input, .-get_type_of_input
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"\320\235\320\265\320\262\320\265\321\200\320\275\320\276\320\265 \320\272\320\276\320\273\320\270\321\207\320\265\321\201\321\202\320\262\320\276 \320\277\320\260\321\200\320\260\320\274\320\265\321\202\321\200\320\276\320\262, \320\270\321\205 \320\262\321\201\320\265\320\263\320\264\320\260 1 - [-g] (\320\263\320\265\320\275\320\265\321\200\320\260\321\206\320\270\321\217) \320\270\320\273\320\270 2 - \320\262\321\205\320\276\320\264\320\275\320\276\320\271 \320\270 \320\262\321\213\321\205\320\276\320\264\320\275\320\276\320\271 \321\204\320\260\320\271\320\273"
	.align 8
.LC23:
	.string	"\320\222\321\213\320\261\320\265\321\200\320\265\321\202\320\265 \321\202\320\270\320\277 \320\262\320\262\320\276\320\264\320\260.\n-----------\n1) \320\222\321\200\321\203\321\207\320\275\321\203\321\216\n2) \320\220\320\262\321\202\320\276\320\274\320\260\321\202\320\270\321\207\320\265\321\201\320\272\320\270"
	.align 8
.LC25:
	.string	"\320\222\321\200\320\265\320\274\321\217 \320\270\321\201\320\277\320\276\320\273\320\275\320\265\320\275\320\270\321\217 \320\277\321\200\320\276\320\263\321\200\320\260\320\274\320\274\321\213: %f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
	push	rbp	#
	mov	rbp, rsp	#,
	push	r15	#
	push	r14	#
	push	r13	#
	push	r12	#
	mov	r12, rsi	# argv, tmp202
	push	rbx	#
	mov	ebx, edi	# argc, tmp201
	sub	rsp, 40	#,
# main_g_X444.c:183: {
	mov	rax, QWORD PTR fs:40	# tmp213, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -56[rbp], rax	# D.3100, tmp213
	xor	eax, eax	# tmp213
# main_g_X444.c:186:     if (argc != 3 && argc != 1 && argc != 2) {
	mov	eax, edi	# tmp121, argc
# main_g_X444.c:183: {
	mov	QWORD PTR -72[rbp], rsp	# %sfp,
# main_g_X444.c:186:     if (argc != 3 && argc != 1 && argc != 2) {
	and	eax, -3	# tmp121,
# main_g_X444.c:186:     if (argc != 3 && argc != 1 && argc != 2) {
	cmp	eax, 1	# tmp121,
	je	.L81	#,
# main_g_X444.c:186:     if (argc != 3 && argc != 1 && argc != 2) {
	cmp	edi, 2	# argc,
	jne	.L128	#,
.L82:
# main_g_X444.c:192:         N = generate_N();
	xor	eax, eax	#
	call	generate_N	#
	mov	r15d, eax	# N, tmp205
.L90:
# main_g_X444.c:207:         size_of_string = generate_size_of_string();
	xor	eax, eax	#
	call	generate_size_of_string	#
# main_g_X444.c:212:     char str[size_of_string];
	mov	rcx, rsp	# tmp149,
# main_g_X444.c:207:         size_of_string = generate_size_of_string();
	mov	r13d, eax	# size_of_string, tmp209
# main_g_X444.c:212:     char str[size_of_string];
	cdqe
	add	rax, 15	# tmp142,
	mov	rdx, rax	# tmp146, tmp142
	and	rax, -4096	# tmp148,
	and	rdx, -16	# tmp146,
	sub	rcx, rax	# tmp149, tmp148
.L93:
	cmp	rsp, rcx	#, tmp149
	je	.L94	#,
	sub	rsp, 4096	#,
	or	QWORD PTR 4088[rsp], 0	#,
	jmp	.L93	#
.L81:
# main_g_X444.c:189:     } else if (argc == 3) {
	cmp	edi, 3	# argc,
	je	.L129	#,
# main_g_X444.c:191:     } else if (argc == 2) {
	cmp	edi, 2	# argc,
	je	.L82	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rdi, .LC23[rip]	# tmp139,
	call	puts@PLT	#
# main_g_X444.c:195:         type = get_type_of_input();
	xor	eax, eax	#
	call	get_type_of_input	#
	mov	r14d, eax	# type, tmp206
# main_g_X444.c:197:             N = get_N();
	xor	eax, eax	#
# main_g_X444.c:196:         if (type == 1) {
	cmp	r14d, 1	# type,
	je	.L130	#,
# main_g_X444.c:199:             N = generate_N();
	call	generate_N	#
	mov	r15d, eax	# N, tmp208
# main_g_X444.c:206:     } else if (argc == 2 || type == 2) {
	cmp	r14d, 2	# type,
	je	.L90	#,
.L92:
# main_g_X444.c:210:         size_of_string = get_size_of_string();
	xor	eax, eax	#
	call	get_size_of_string	#
# main_g_X444.c:212:     char str[size_of_string];
	mov	rcx, rsp	# tmp165,
# main_g_X444.c:210:         size_of_string = get_size_of_string();
	mov	r13d, eax	# size_of_string, tmp210
# main_g_X444.c:212:     char str[size_of_string];
	cdqe
	add	rax, 15	# tmp158,
	mov	rdx, rax	# tmp162, tmp158
	and	rax, -4096	# tmp164,
	and	rdx, -16	# tmp162,
	sub	rcx, rax	# tmp165, tmp164
.L96:
	cmp	rsp, rcx	#, tmp165
	je	.L97	#,
	sub	rsp, 4096	#,
	or	QWORD PTR 4088[rsp], 0	#,
	jmp	.L96	#
.L128:
# main_g_X444.c:187:         puts("Неверное количество параметров, их всегда 1 - [-g] (генерация) или 2 - входной и выходной файл");
	lea	rdi, .LC22[rip]	# tmp122,
	call	puts@PLT	#
# main_g_X444.c:188:         return 1;
	mov	eax, 1	# <retval>,
.L80:
# main_g_X444.c:236: }
	mov	rdx, QWORD PTR -56[rbp]	# tmp214, D.3100
	sub	rdx, QWORD PTR fs:40	# tmp214, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L131	#,
	lea	rsp, -40[rbp]	#,
	pop	rbx	#
	pop	r12	#
	pop	r13	#
	pop	r14	#
	pop	r15	#
	pop	rbp	#
	ret	
.L130:
# main_g_X444.c:197:             N = get_N();
	call	get_N	#
	mov	r15d, eax	# N, tmp207
	jmp	.L92	#
.L129:
# main_g_X444.c:190:         N = get_N_file(argv);
	mov	rdi, rsi	#, argv
	call	get_N_file	#
# main_g_X444.c:204:         size_of_string = get_size_of_string_file(argv);
	mov	rdi, r12	#, argv
# main_g_X444.c:190:         N = get_N_file(argv);
	mov	r15d, eax	# N, tmp203
# main_g_X444.c:204:         size_of_string = get_size_of_string_file(argv);
	call	get_size_of_string_file	#
# main_g_X444.c:212:     char str[size_of_string];
	mov	rcx, rsp	# tmp132,
# main_g_X444.c:204:         size_of_string = get_size_of_string_file(argv);
	mov	r13d, eax	# size_of_string, tmp204
# main_g_X444.c:212:     char str[size_of_string];
	cdqe
	add	rax, 15	# tmp125,
	mov	rdx, rax	# tmp129, tmp125
	and	rax, -4096	# tmp131,
	and	rdx, -16	# tmp129,
	sub	rcx, rax	# tmp132, tmp131
.L85:
	cmp	rsp, rcx	#, tmp132
	je	.L86	#,
	sub	rsp, 4096	#,
	or	QWORD PTR 4088[rsp], 0	#,
	jmp	.L85	#
.L94:
	mov	rax, rdx	# tmp146, tmp146
	and	eax, 4095	# tmp146,
	sub	rsp, rax	#, tmp150
	test	rax, rax	# tmp150
	jne	.L132	#,
.L95:
# main_g_X444.c:216:         generate_string(str, size_of_string);
	mov	esi, r13d	#, size_of_string
	mov	rdi, rsp	#,
# main_g_X444.c:212:     char str[size_of_string];
	mov	r14, rsp	# str.9,
# main_g_X444.c:216:         generate_string(str, size_of_string);
	call	generate_string	#
.L88:
# main_g_X444.c:221:     clock_t begin = clock();
	call	clock@PLT	#
# main_g_X444.c:36:     for (int i = 0; i < size_of_string; i++)
	test	r13d, r13d	# size_of_string
	mov	r9d, 444	# ivtmp_141,
	setle	r11b	#, tmp175
# main_g_X444.c:38:         if (counter == N)
	test	r15d, r15d	# N
# main_g_X444.c:221:     clock_t begin = clock();
	mov	r10, rax	# begin, tmp211
# main_g_X444.c:38:         if (counter == N)
	sete	al	#, tmp177
	or	r11d, eax	# _49, tmp177
	.p2align 4,,10
	.p2align 3
.L99:
# main_g_X444.c:35:     int index_start = 0;
	xor	edi, edi	# index_start
# main_g_X444.c:38:         if (counter == N)
	test	r11b, r11b	# _49
	jne	.L127	#,
# main_g_X444.c:36:     for (int i = 0; i < size_of_string; i++)
	xor	edx, edx	# i
# main_g_X444.c:34:     int counter = 0;
	xor	ecx, ecx	# counter
	jmp	.L104	#
	.p2align 4,,10
	.p2align 3
.L101:
# main_g_X444.c:52:             counter++;
	add	ecx, 1	# counter,
# main_g_X444.c:38:         if (counter == N)
	cmp	ecx, r15d	# counter, N
	je	.L102	#,
	cmp	r13d, esi	# size_of_string, _145
	jle	.L102	#,
	mov	edx, esi	# i, _145
.L104:
# main_g_X444.c:42:         if (counter == 0)
	test	ecx, ecx	# counter
	je	.L103	#,
.L100:
# main_g_X444.c:50:         if (str[i - 1] > str[i])
	movsx	rax, edx	# _66, i
# main_g_X444.c:36:     for (int i = 0; i < size_of_string; i++)
	lea	esi, 1[rdx]	# _145,
# main_g_X444.c:50:         if (str[i - 1] > str[i])
	movzx	r8d, BYTE PTR [r14+rax]	# tmp227, *_70
	cmp	BYTE PTR -1[r14+rax], r8b	# *_68, tmp227
	jg	.L101	#,
# main_g_X444.c:38:         if (counter == N)
	mov	edi, edx	# index_start, i
	cmp	r13d, esi	# size_of_string, _145
	jle	.L127	#,
# main_g_X444.c:36:     for (int i = 0; i < size_of_string; i++)
	mov	edx, esi	# i, _145
.L103:
# main_g_X444.c:44:             if (i > 0)
	test	edx, edx	# i
	cmovne	edi, edx	# index_start,, index_start, i
	cmp	edx, 1	# i,
	sbb	ecx, ecx	# counter
	add	ecx, 1	# counter,
	jmp	.L100	#
	.p2align 4,,10
	.p2align 3
.L127:
# main_g_X444.c:34:     int counter = 0;
	xor	ecx, ecx	# counter
.L102:
# main_g_X444.c:223:     for (size_t i = 0; i < 444; i++) {
	sub	r9, 1	# ivtmp_141,
	jne	.L99	#,
	movd	xmm0, edi	# tmp184, index_start
	movd	xmm1, ecx	# counter, counter
	mov	QWORD PTR -80[rbp], r10	# %sfp, begin
	punpckldq	xmm0, xmm1	# tmp184, counter
	movq	QWORD PTR counter_index.0[rip], xmm0	# MEM <vector(2) int> [(int *)&counter_index], tmp184
# main_g_X444.c:226:     clock_t end = clock();
	call	clock@PLT	#
# main_g_X444.c:227:     double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	mov	r10, QWORD PTR -80[rbp]	# begin, %sfp
# main_g_X444.c:227:     double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	pxor	xmm0, xmm0	# tmp186
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rsi, .LC25[rip]	# tmp189,
	mov	edi, 1	#,
# main_g_X444.c:227:     double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	sub	rax, r10	# tmp185, begin
# main_g_X444.c:227:     double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	cvtsi2sd	xmm0, rax	# tmp186, tmp185
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	eax, 1	#,
# main_g_X444.c:227:     double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	divsd	xmm0, QWORD PTR .LC24[rip]	# time_spent,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# main_g_X444.c:229:     int index_start = counter_index[0];
	mov	edi, DWORD PTR counter_index.0[rip]	# index_start, counter_index[0]
# main_g_X444.c:230:     int counter = counter_index[1];
	mov	esi, DWORD PTR counter_index.0[rip+4]	# counter, counter_index[1]
# main_g_X444.c:231:     if (argc == 3) {
	cmp	ebx, 3	# argc,
	je	.L133	#,
# main_g_X444.c:234:         print_answer(index_start, counter, N, str);
	mov	rcx, r14	#, str.9
	mov	edx, r15d	#, N
	call	print_answer	#
.L108:
	xor	eax, eax	# <retval>
	mov	rsp, QWORD PTR -72[rbp]	#, %sfp
	jmp	.L80	#
.L133:
# main_g_X444.c:232:         print_answer_file(str, index_start, counter, N, argv);
	mov	edx, esi	#, counter
	mov	r8, r12	#, argv
	mov	esi, edi	#, index_start
	mov	ecx, r15d	#, N
	mov	rdi, r14	#, str.9
	call	print_answer_file	#
	jmp	.L108	#
.L97:
# main_g_X444.c:212:     char str[size_of_string];
	mov	rax, rdx	# tmp162, tmp162
	and	eax, 4095	# tmp162,
	sub	rsp, rax	#, tmp166
	test	rax, rax	# tmp166
	jne	.L134	#,
.L98:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	edx, r13d	#, size_of_string
	lea	rsi, .LC3[rip]	# tmp172,
	xor	eax, eax	#
# main_g_X444.c:212:     char str[size_of_string];
	mov	r14, rsp	# str.9,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	edi, 1	#,
	call	__printf_chk@PLT	#
# main_g_X444.c:29:     scanf("%s", str);
	mov	rsi, rsp	#,
	lea	rdi, .LC4[rip]	# tmp173,
	xor	eax, eax	#
	call	__isoc99_scanf@PLT	#
# main_g_X444.c:30: }
	jmp	.L88	#
.L86:
# main_g_X444.c:212:     char str[size_of_string];
	mov	rax, rdx	# tmp129, tmp129
	and	eax, 4095	# tmp129,
	sub	rsp, rax	#, tmp133
	test	rax, rax	# tmp133
	jne	.L135	#,
.L87:
# main_g_X444.c:214:         get_string_file(str, size_of_string, argv);
	mov	rdx, r12	#, argv
	mov	esi, r13d	#, size_of_string
	mov	rdi, rsp	#,
# main_g_X444.c:212:     char str[size_of_string];
	mov	r14, rsp	# str.9,
# main_g_X444.c:214:         get_string_file(str, size_of_string, argv);
	call	get_string_file	#
	jmp	.L88	#
.L134:
# main_g_X444.c:212:     char str[size_of_string];
	or	QWORD PTR -8[rsp+rax], 0	#,
	jmp	.L98	#
.L132:
	or	QWORD PTR -8[rsp+rax], 0	#,
	jmp	.L95	#
.L131:
# main_g_X444.c:236: }
	call	__stack_chk_fail@PLT	#
.L135:
# main_g_X444.c:212:     char str[size_of_string];
	or	QWORD PTR -8[rsp+rax], 0	#,
	jmp	.L87	#
	.size	main, .-main
	.local	counter_index.0
	.comm	counter_index.0,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC24:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
