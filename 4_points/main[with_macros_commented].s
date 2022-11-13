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
.LFB0:
# Обязательные действия с регистрами.
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
	sub	rsp, 56	
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# Производим подготовку к выполнению main
# int main()
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax	
	xor	eax, eax	
	mov	rax, rsp	
	mov	rbx, rax	
# Выделяем N на стеке (-96 по стеку);
# int N = 0;
	mov	DWORD PTR -96[rbp], 0
# Выделяем size_of_string (-92 по стеку);
# int size_of_string = 0;
	mov	DWORD PTR -92[rbp], 0	
# Выделяем counter (-88 по стеку);
# int counter = 0;
	mov	DWORD PTR -88[rbp], 0
# Выделяяем index_start (-84 по стеку);
# int index_start = 0;
	mov	DWORD PTR -84[rbp], 0
# while (N <= 1 || N >= 100) 
	jmp	.L2	
.L3:
# Готовим данные к передаче в printf
# printf("Введите N (длину искомой убывающей последовательности): ");
	lea	rax, .LC0[rip]	
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT	
# Готовимся к получению N от пользователя.
# scanf("%d", &N);
	lea	rax, -96[rbp]
	mov	rsi, rax	
	lea	rax, .LC1[rip]	
	mov	rdi, rax	
	mov	eax, 0	
	call	__isoc99_scanf@PLT	
.L2:
# Реализуем проверку N <= 1
# while (N <= 1 || N >= 100) 
	mov	eax, DWORD PTR -96[rbp]
	cmp	eax, 1	
	jle	.L3	
	mov	eax, DWORD PTR -96[rbp]	
# Реализуем проверку N >= 100
# while (N <= 1 || N >= 100) {
	cmp	eax, 99
	jg	.L3	
# Прыгаем к получению sise_of_string
# while (size_of_string  <= 1 || size_of_string  >= 10000) {
	jmp	.L4	
.L5:
# Готовимся к получению длины строки выводя запрос
# printf("Введите длину cтроки: ");
	lea	rax, .LC2[rip]	
	mov	rdi, rax	
	mov	eax, 0	
	call	printf@PLT	
# Получаем size_of_string у пользователя
# scanf("%d", &size_of_string);
	lea	rax, -92[rbp]	
	mov	rsi, rax
	lea	rax, .LC1[rip]	
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT	
.L4:
# Реализуем проверку длины строки <= 1
# while (size_of_string  <= 1 || size_of_string  >= 10000) 
	mov	eax, DWORD PTR -92[rbp]
	cmp	eax, 1
	jle	.L5	
# Реализуем проверку длины строки >= 10000
# while (size_of_string  <= 1 || size_of_string  >= 10000) {
	mov	eax, DWORD PTR -92[rbp]	
	cmp	eax, 9999	
	jg	.L5	
# Приступаем к созданию массива символов в качестве строки.
# char str[size_of_string];
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
# Выводим пользователю подсказку о вводе.
# printf("Введите строку размера [%d]: ", size_of_string);
	mov	eax, DWORD PTR -92[rbp]
	mov	esi, eax	
	lea	rax, .LC3[rip]	
	mov	rdi, rax	
	mov	eax, 0
	call	printf@PLT
# Получаем от пользователя строку.
# scanf("%s", str);
	mov	rax, QWORD PTR -64[rbp]	
	mov	rsi, rax	
	lea	rax, .LC4[rip]	
	mov	rdi, rax	
	mov	eax, 0	
	call	__isoc99_scanf@PLT	
# Сообщаем пользователю, что мы начинаем работу со строкой.
# printf("Начинаем поиск первой убывающей последовательности размера [%d]\n\n", N);
	mov	eax, DWORD PTR -96[rbp]	
	mov	esi, eax	
	lea	rax, .LC5[rip]	
	mov	rdi, rax	
	mov	eax, 0	
	call	printf@PLT	
# for (int i = 0; i < size_of_string; i++)
# Выделяем память под i (-80 по стеку)
	mov	DWORD PTR -80[rbp], 0
	jmp	.L9	
.L18:
# Проверяем на нахождение ответа.
# if (counter == N)
	mov	eax, DWORD PTR -96[rbp]	
	cmp	DWORD PTR -88[rbp], eax	
	jne	.L10	
# Если ответ найден - выводим информацию об этом.
# printf("Последовательность из [%d] символов найдена!\n", N);
	mov	eax, DWORD PTR -96[rbp]	
	mov	esi, eax	
	lea	rax, .LC6[rip]	
	mov	rdi, rax	
	mov	eax, 0	
	call	printf@PLT
# break;
	jmp	.L11
.L10:
# if (counter == 0)
# Выделяем паямять под counter (-88 по стеку)
	cmp	DWORD PTR -88[rbp], 0
	jne	.L12	
# if (i > 0)
# Выделяем память под i (-80 по стеку)
	cmp	DWORD PTR -80[rbp], 0
	jle	.L12
# index_start = i;
	mov	eax, DWORD PTR -80[rbp]	
# index_start (-84 по стеку)	
	mov	DWORD PTR -84[rbp], eax	
# counter++;
	add	DWORD PTR -88[rbp], 1
.L12:
# if (str[i-1] > str[i]) 
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
# counter++;
	add	DWORD PTR -88[rbp], 1
# if (i == size_of_string - 1)
	mov	eax, DWORD PTR -92[rbp]	
	sub	eax, 1	
	cmp	DWORD PTR -80[rbp], eax	
	jne	.L15
	jmp	.L24
.L13:
# counter = 0;
	mov	DWORD PTR -88[rbp], 0
# index_start = i;
	mov	eax, DWORD PTR -80[rbp]
	mov	DWORD PTR -84[rbp], eax	
# continue;
	jmp	.L15
.L24:
# if (counter == N)
	mov	eax, DWORD PTR -96[rbp]
# if (counter == N)
	cmp	DWORD PTR -88[rbp], eax	
	jne	.L16	
# Сообщаем пользователю, что последовательность найдена.
# printf("Последовательность из [%d] символов найдена!\n", N);
	mov	eax, DWORD PTR -96[rbp]	
	mov	esi, eax	
	lea	rax, .LC6[rip]	
	mov	rdi, rax
	mov	eax, 0	
	call	printf@PLT	
# break;
	jmp	.L11	
.L16:
# Если мы не нашли подходящей последовательности, то выходим из программы.
# printf("Ничего не найдено!\n");
	lea	rax, .LC7[rip]
	mov	rdi, rax
	call	puts@PLT
# return 0;
	mov	eax, 0	
	jmp	.L17
.L15:
# for (int i = 0; i < size_of_string; i++)
# i++
	add	DWORD PTR -80[rbp], 1
.L9:
# for (int i = 0; i < size_of_string; i++)
	mov	eax, DWORD PTR -92[rbp]
	cmp	DWORD PTR -80[rbp], eax	
	jl	.L18
.L11:
# if (counter != N)
	mov	eax, DWORD PTR -96[rbp]
	cmp	DWORD PTR -88[rbp], eax	
	je	.L19
# printf("Ничего не найдено!\n");
	lea	rax, .LC7[rip]	
	mov	rdi, rax	
	call	puts@PLT	
# return 0;
	mov	eax, 0	
	jmp	.L17
.L19:
# Приступаем к печати ответа.
# printf("Ответ:\n[%d]: ", N);
	mov	eax, DWORD PTR -96[rbp]	
	mov	esi, eax	
	lea	rax, .LC8[rip]	
	mov	rdi, rax	
	mov	eax, 0	
	call	printf@PLT	
# for (int i = index_start-1; i < index_start+counter-1; i++)
	mov	eax, DWORD PTR -84[rbp]	
	sub	eax, 1	
	mov	DWORD PTR -76[rbp], eax	
	jmp	.L20
.L21:
# Выводим символ строки ответа
# printf("%c", *(str+i));
	mov	eax, DWORD PTR -76[rbp]	
	movsx	rdx, eax	
	mov	rax, QWORD PTR -64[rbp]	
	add	rax, rdx	
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al	
	mov	edi, eax	
	call	putchar@PLT	
# for (int i = index_start-1; i < index_start+counter-1; i++)
# i++
	add	DWORD PTR -76[rbp], 1
.L20:
# for (int i = index_start-1; i < index_start+counter-1; i++)
	mov	edx, DWORD PTR -84[rbp]	
	mov	eax, DWORD PTR -88[rbp]	
	add	eax, edx	
	sub	eax, 1
	cmp	DWORD PTR -76[rbp], eax	
	jl	.L21
# Наводим красоту
# printf("\n-----------------------\n\n");
	lea	rax, .LC9[rip]	
	mov	rdi, rax	
	call	puts@PLT	
	mov	rsp, rbx	
	mov	eax, 0	
	jmp	.L22	
.L17:
# return 0;
	mov	rsp, rbx
.L22:
# main end
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
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
