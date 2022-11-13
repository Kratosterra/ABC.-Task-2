	.file	"main_f.c"
	.intel_syntax noprefix
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
# Функция получения N от пользователя.
get_N:
	push	r12	
# Сохраняем ссылку на строку в регистре r12
	lea	r12, .LC0[rip]
	push	rbp	
	push	rbx	
# Сохраняем ссылку на строку в регистре rbx
	lea	rbx, .LC1[rip]
	sub	rsp, 16	
# int get_N()
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax	
	xor	eax, eax
# Выделяем N (4 на стеке)
# int N = 0;
	mov	DWORD PTR 4[rsp], 0	
# Сохраняем в rbp
	lea	rbp, 4[rsp]
	.p2align 4,,10
	.p2align 3
.L2:
# Печатаем запрос на N
	mov	rsi, r12
	mov	edi, 1	
	xor	eax, eax
	call	__printf_chk@PLT
# Получаем N
# scanf("%d", &N);
	mov	rsi, rbp
	mov	rdi, rbx
	xor	eax, eax
	call	__isoc99_scanf@PLT
# while (N <= 1 || N >= 100) 
	mov	eax, DWORD PTR 4[rsp]
	lea	edx, -2[rax]
	cmp	edx, 97
	ja	.L2	
# Завершение
	mov	rdx, QWORD PTR 8[rsp]
	sub	rdx, QWORD PTR fs:40
	jne	.L7	
	add	rsp, 16	
	pop	rbx	
	pop	rbp	
	pop	r12	
	ret	
.L7:
	call	__stack_chk_fail@PLT
	.size	get_N, .-get_N
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\264\320\273\320\270\320\275\321\203 c\321\202\321\200\320\276\320\272\320\270: "
	.text
	.p2align 4
	.globl	get_size_of_string
	.type	get_size_of_string, @function
# Функция получения size_of_string от пользователя
get_size_of_string:
	push	r12	
	lea	r12, .LC2[rip]	# Сохраняем в r12 строку
	push	rbp	
	push	rbx	
	lea	rbx, .LC1[rip]	# Сохраняем в rbx строку
	sub	rsp, 16	#,
# int get_size_of_string()
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
# int size_of_string = 0;
	mov	DWORD PTR 4[rsp], 0
	lea	rbp, 4[rsp]
	.p2align 4,,10
	.p2align 3
.L9:
# Печатаем запрос на получение размера строки от пользователя
	mov	rsi, r12
	mov	edi, 1	
	xor	eax, eax
	call	__printf_chk@PLT
# Получаем размер от пользователя
# scanf("%d", &size_of_string);
	mov	rsi, rbp
	mov	rdi, rbx
	xor	eax, eax	
	call	__isoc99_scanf@PLT	
# while (size_of_string  <= 1 || size_of_string  >= 10000) 
	mov	eax, DWORD PTR 4[rsp]
	lea	edx, -2[rax]
	cmp	edx, 9997	
	ja	.L9	
# Завершение
	mov	rdx, QWORD PTR 8[rsp]	
	sub	rdx, QWORD PTR fs:40	
	jne	.L13	
	add	rsp, 16	
	pop	rbx	
	pop	rbp	
	pop	r12	
	ret	
.L13:
	call	__stack_chk_fail@PLT
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
# Функция, получающая от пользователя строку в виде массива знаков
get_string:
	push	rbp
# get_string(char str[], int size_of_string)
# в edx будет содержаться esi, в котором был size_of string
	mov	edx, esi
# в rbp будет содержаться rdi, в котором была ссылка на str
	mov	rbp, rdi
# Печатаем запрос на взятие строки от пользователя
	lea	rsi, .LC3[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
# Получаем строку от пользователя
# scanf("%s", str);
	mov	rsi, rbp
	lea	rdi, .LC4[rip]
	xor	eax, eax
	pop	rbp	
# scanf("%s", str);
	jmp	__isoc99_scanf@PLT
	.size	get_string, .-get_string
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"\320\235\320\260\321\207\320\270\320\275\320\260\320\265\320\274 \320\277\320\276\320\270\321\201\320\272 \320\277\320\265\321\200\320\262\320\276\320\271 \321\203\320\261\321\213\320\262\320\260\321\216\321\211\320\265\320\271 \320\277\320\276\321\201\320\273\320\265\320\264\320\276\320\262\320\260\321\202\320\265\320\273\321\214\320\275\320\276\321\201\321\202\320\270 \321\200\320\260\320\267\320\274\320\265\321\200\320\260 [%d]\n\n"
	.align 8
.LC6:
	.string	"\320\237\320\276\321\201\320\273\320\265\320\264\320\276\320\262\320\260\321\202\320\265\320\273\321\214\320\275\320\276\321\201\321\202\321\214 \320\270\320\267 [%d] \321\201\320\270\320\274\320\262\320\276\320\273\320\276\320\262 \320\275\320\260\320\271\320\264\320\265\320\275\320\260!\n"
	.text
	.p2align 4
	.globl	find_index_count
	.type	find_index_count, @function
# Функция, находящая область строки с убывающей последовтаельностью размера N.
find_index_count:
	push	r15	
	xor	eax, eax
# find_index_count(char str[], int size_of_string, int N, int counter_index[]) 
# Помещаем в r15 регистр rcx, который содержит ссылку на counter_index
	mov	r15, rcx	# counter_index, tmp102
	push	r14	
# Помещаем в r14d регистр edx, который содержит N
	mov	r14d, edx	# N, tmp101
	push	r13	
# Помещаем в r13d регистр esi, который содержит size_of_string
	mov	r13d, esi
# Помещаем строку в rsi
	lea	rsi, .LC5[rip]
	push	r12	
	push	rbp	
# Помещаем в rbp регистр rdi, который содержит ссылку на str
	mov	rbp, rdi
	mov	edi, 1
	push	rbx	
	sub	rsp, 8	
# Печатаем строку
	call	__printf_chk@PLT
# for (int i = 0; i < size_of_string; i++) 
# size_of_string test
	test	r13d, r13d
	jle	.L24
# if (counter == N) {
	test	r14d, r14d
	je	.L25
# for (int i = 0; i < size_of_string; i++) 
	xor	edx, edx	
# int index_start = 0;
	xor	r12d, r12d	
# int counter = 0;
	xor	ebx, ebx
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L21:
# counter++;
	add	ebx, 1
# for (int i = 0; i < size_of_string; i++) 
	cmp	r13d, ecx
	jle	.L17
# if (counter == N) 
	cmp	r14d, ebx
	je	.L18
	mov	edx, ecx
.L19:
# if (counter == 0) 
	test	ebx, ebx
	je	.L22
.L20:
# if (str[i-1] > str[i]) 
	movsx	rax, edx
# for (int i = 0; i < size_of_string; i++) 
	lea	ecx, 1[rdx]	
# if (str[i-1] > str[i])
	movzx	edi, BYTE PTR 0[rbp+rax]
	cmp	BYTE PTR -1[rbp+rax], dil
	jg	.L21
# for (int i = 0; i < size_of_string; i++) 
	mov	r12d, edx
	cmp	r13d, ecx
	jle	.L30
	mov	edx, ecx
.L22:
# if (i > 0)
	test	edx, edx	
	cmovne	r12d, edx
	cmp	edx, 1
	sbb	ebx, ebx
	add	ebx, 1
	jmp	.L20
.L25:
# int index_start = 0;
	xor	r12d, r12d
# int counter = 0;
	xor	ebx, ebx
	.p2align 4,,10
	.p2align 3
.L18:
# N в edx
# Печатаем строку
	mov	edx, r14d
	lea	rsi, .LC6[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
.L17:
# Готовим ответ
# counter_index[0] = index_start;
	mov	DWORD PTR [r15], r12d
# counter_index[1] = counter;
	mov	DWORD PTR 4[r15], ebx	
# END
	add	rsp, 8
	pop	rbx	
	pop	rbp	
	pop	r12	
	pop	r13	
	pop	r14	
	pop	r15	
	ret	
.L24:
# int index_start = 0;
	xor	r12d, r12d
.L30:
# int counter = 0;
	xor	ebx, ebx
	jmp	.L17
	.size	find_index_count, .-find_index_count
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"\320\235\320\270\321\207\320\265\320\263\320\276 \320\275\320\265 \320\275\320\260\320\271\320\264\320\265\320\275\320\276!"
	.section	.rodata.str1.1
.LC8:
	.string	"\320\236\321\202\320\262\320\265\321\202:\n[%d]: "
.LC9:
	.string	"\n-----------------------\n"
	.text
	.p2align 4
	.globl	print_answer
	.type	print_answer, @function
# Функция, которая печатаем ответ на экран пользовтаеля.
print_answer:
	push	r13	
	push	r12	
	push	rbp	
	push	rbx	
	sub	rsp, 8	
# if (counter != N) 
	cmp	esi, edx
	je	.L32
# Печатаем строку
	lea	rdi, .LC7[rip]
	call	puts@PLT
.L33:
	add	rsp, 8	
	lea	rdi, .LC9[rip]	
	pop	rbx	
	pop	rbp	
	pop	r12	
	pop	r13	
	jmp	puts@PLT
	.p2align 4,,10
	.p2align 3
.L32:
# Помещаем в r13d регистр edi, содержащий index_start
	mov	r13d, edi	# index_start, tmp98
# Помещаем в r12d регистр esi, содержащий counter
	mov	r12d, esi
	mov	edx, esi
	mov	edi, 1	
	lea	rsi, .LC8[rip]
	xor	eax, eax
# for (int i = index_start-1; i < index_start+counter-1; i++) 
	lea	ebx, -1[r13]
	mov	rbp, rcx
	call	__printf_chk@PLT	
	lea	r13d, -1[r13+r12]	
	test	r12d, r12d
	jle	.L33
	movsx	rbx, ebx
	.p2align 4,,10
	.p2align 3
.L35:
# Печатаем символ строки
# printf("%c", *(str+i));
	movsx	edi, BYTE PTR 0[rbp+rbx]
# for (int i = index_start-1; i < index_start+counter-1; i++) 
	add	rbx, 1
	call	putchar@PLT
# for (int i = index_start-1; i < index_start+counter-1; i++)
	cmp	r13d, ebx
	jg	.L35	
	jmp	.L33
	.size	print_answer, .-print_answer
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
# main
main:
# Подготовка
	push	rbp	
	mov	rbp, rsp
	push	r13	
	push	r12
	sub	rsp, 16	
# int main()
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
# int N = get_N();
	call	get_N
# Из eax помещаем N в r13d - это наша новая N
	mov	r13d, eax
# int size_of_string = get_size_of_string();
	xor	eax, eax
	call	get_size_of_string
# char str[size_of_string];
	mov	rcx, rsp
# int size_of_string = get_size_of_string();
	movsx	rdx, eax
# rdx, r12 теперь будет содержать размер строки
	mov	r12, rdx
# char str[size_of_string];
	add	rdx, 15	
	mov	rax, rdx
	and	rdx, -4096
	sub	rcx, rdx
	and	rax, -16
	cmp	rsp, rcx
	je	.L40
.L47:
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	cmp	rsp, rcx
	jne	.L47
.L40:
	and	eax, 4095
	sub	rsp, rax
	test	rax, rax
	jne	.L48
.L41:
# get_string(str, size_of_string);
# esi получает size_of_string
	mov	esi, r12d	#, size_of_string
# rdi получает str
	mov	rdi, rsp
	call	get_string
# find_index_count(str, size_of_string, N, counter_index);
# edx получает N
	mov	edx, r13d
# esi получает size_of_string
	mov	esi, r12d
# rdi получает str
	mov	rdi, rsp
# rcx получает counter_index
	lea	rcx, counter_index.0[rip]
	call	find_index_count
# print_answer(index_start, counter, N, str);
# esi получает counter
	mov	esi, DWORD PTR counter_index.0[rip+4]	#, counter_index[1]
# rcx получает str
	mov	rcx, rsp
# edx получает N
	mov	edx, r13d
# edi получает index_start
	mov	edi, DWORD PTR counter_index.0[rip]	#, counter_index[0]
	call	print_answer
# Завершение
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L49
	lea	rsp, -16[rbp]
	xor	eax, eax
	pop	r12	
	pop	r13	
	pop	rbp	
	ret	
.L48:
# char str[size_of_string];
	or	QWORD PTR -8[rsp+rax], 0
	jmp	.L41
.L49:
# END
	call	__stack_chk_fail@PLT
	.size	main, .-main
	.local	counter_index.0
	.comm	counter_index.0,8,8
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
