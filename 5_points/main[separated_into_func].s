	.file	"main_f.c"
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
# Функция получения N от пользователя.
get_N:
.LFB0:
	.cfi_startproc
	endbr64	
	push	rbp	
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	
	.cfi_def_cfa_register 6
	sub	rsp, 16	
# int get_N()
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax	
# Выделяем N (-12 по стеку)
# int N = 0;
	mov	DWORD PTR -12[rbp], 0
# while (N <= 1 || N >= 100) 
	jmp	.L2	
.L3:
# Запрос на N.
# printf("Введите N (длину искомой убывающей последовательности): ");
	lea	rax, .LC0[rip]	
	mov	rdi, rax	
	mov	eax, 0	
	call	printf@PLT	
# Получаем N в -12 по стеку.
# scanf("%d", &N);
	lea	rax, -12[rbp]	
	mov	rsi, rax	
	lea	rax, .LC1[rip]	
	mov	rdi, rax	
	mov	eax, 0
	call	__isoc99_scanf@PLT	
.L2:
# while (N <= 1 || N >= 100) 
	mov	eax, DWORD PTR -12[rbp]
# Реализуем проверку N <= 1
# while (N <= 1 || N >= 100) 
	cmp	eax, 1
	jle	.L3	
# Реализуем проверку N >= 100
# while (N <= 1 || N >= 100)
	mov	eax, DWORD PTR -12[rbp]	
	cmp	eax, 99
	jg	.L3	
# Возвращаем N (-12 по стеку) в регистре eax.
# return N;
	mov	eax, DWORD PTR -12[rbp]
# Завершающие действия
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L5	#,
	call	__stack_chk_fail@PLT
.L5:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	get_N, .-get_N
	.section	.rodata
	.align 8
.LC2:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\264\320\273\320\270\320\275\321\203 c\321\202\321\200\320\276\320\272\320\270: "
	.text
	.globl	get_size_of_string
	.type	get_size_of_string, @function
# Функция получения size_of_string от пользователя
get_size_of_string:
.LFB1:
# Обязательные начальные действия.
	.cfi_startproc
	endbr64	
	push	rbp	
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16	
# int get_size_of_string()
	mov	rax, QWORD PTR fs:40	
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
# Выделяем size_of_string (-12 по стеку)
# int size_of_string = 0;
	mov	DWORD PTR -12[rbp], 0
# while (size_of_string  <= 1 || size_of_string  >= 10000) {
	jmp	.L7
.L8:
# Выводим запрос на ввод пользователя
# printf("Введите длину cтроки: ");
	lea	rax, .LC2[rip]
	mov	rdi, rax	
	mov	eax, 0	
	call	printf@PLT	
# Получаем от пользователя размер строки
# scanf("%d", &size_of_string);
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L7:
# while (size_of_string  <= 1 || size_of_string  >= 10000) {
	mov	eax, DWORD PTR -12[rbp]
# Реализуем проверку размера строки <= 1
# while (size_of_string  <= 1 || size_of_string  >= 10000) {
	cmp	eax, 1
	jle	.L8	#,
# Реализуем проверку размера строки >= 1000
# while (size_of_string  <= 1 || size_of_string  >= 10000) {
	mov	eax, DWORD PTR -12[rbp]	
	cmp	eax, 9999
	jg	.L8	
# Возвращаем размер строки (-12 по стеку) в регистре eax
# return size_of_string;
	mov	eax, DWORD PTR -12[rbp]
# Конечные дейсвия
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40	
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
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
# Функция, получающая от пользователя строку в виде массива знаков
get_string:
.LFB2:
# Подготовка
	.cfi_startproc
	endbr64	
	push	rbp	
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
# Помещаем ссылку на массив из rdi в -8 по стеку
	mov	QWORD PTR -8[rbp], rdi
# Помещаем размер строки из esi в -12 по стеку
	mov	DWORD PTR -12[rbp], esi
# Выводим запрос на получение строки
# printf("Введите строку размера [%d]: ", size_of_string);
	mov	eax, DWORD PTR -12[rbp]	
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
# Получаем строку от пользователя в eax
# scanf("%s", str);
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT	
# Конечные действия
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
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
# Функция, находящая область строки с убывающей последовтаельностью размера N.
find_index_count:
.LFB3:
	.cfi_startproc
	endbr64	
	push	rbp	
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48	
# Помещаем ссылку на массив из rdi в -24 по стеку
	mov	QWORD PTR -24[rbp], rdi	
# Помещаем размер строки из esi в -28 по стеку
	mov	DWORD PTR -28[rbp], esi
# Помещаем N  из edx в -32 по стеку
	mov	DWORD PTR -32[rbp], edx	
# Помещаем ссылку на counter_index из rcx (массив, содерщащий счетчик и начальный индекс для выделения области ответа в строке) в -40 по стеку
	mov	QWORD PTR -40[rbp], rcx	
# Выделяем counter в -12 по стеку
# int counter = 0;
	mov	DWORD PTR -12[rbp], 0	# counter,
# Выделяем index_start в -8 по стеку.
# int index_start = 0;
	mov	DWORD PTR -8[rbp], 0
# Выводим сообщение о том, что начинаем поиск.
# printf("Начинаем поиск первой убывающей последовательности размера [%d]\n\n", N);
	mov	eax, DWORD PTR -32[rbp]	
	mov	esi, eax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
# for (int i = 0; i < size_of_string; i++)
	mov	DWORD PTR -4[rbp], 0	
	jmp	.L13
.L19:
# if (counter == N)
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jne	.L14
# При успехе завершаем работу.
# printf("Последовательность из [%d] символов найдена!\n", N);
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax	
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
# break;
	jmp	.L15
.L14:
# if (counter == 0) 
	cmp	DWORD PTR -12[rbp], 0
	jne	.L16
# if (i > 0)
	cmp	DWORD PTR -4[rbp], 0
	jle	.L16
# index_start = i;
	mov	eax, DWORD PTR -4[rbp]	
	mov	DWORD PTR -8[rbp], eax
# counter++;
	add	DWORD PTR -12[rbp], 1
.L16:
# if (str[i-1] > str[i])
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]	
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
# if (str[i-1] > str[i])
	mov	eax, DWORD PTR -4[rbp]	
	movsx	rcx, eax	
	mov	rax, QWORD PTR -24[rbp]	
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]	
# if (str[i-1] > str[i]) 
	cmp	dl, al	
	jle	.L17
# counter++;
	add	DWORD PTR -12[rbp], 1
	jmp	.L18	
.L17:
# -12 по стеку (counter) становится 0
# counter = 0;
	mov	DWORD PTR -12[rbp], 0
# index_start = i;
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
# continue;
	nop	
.L18:
# for (int i = 0; i < size_of_string; i++)
# i++
	add	DWORD PTR -4[rbp], 1
.L13:
# for (int i = 0; i < size_of_string; i++) 
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L19
.L15:'
# Начинаем формирование ответа
# counter_index[0] = index_start;
	mov	rax, QWORD PTR -40[rbp]	
	mov	edx, DWORD PTR -8[rbp]	
	mov	DWORD PTR [rax], edx
# counter_index[1] = counter;
	mov	rax, QWORD PTR -40[rbp]	
	lea	rdx, 4[rax]	
# counter_index[1] = counter;
	mov	eax, DWORD PTR -12[rbp]	
	mov	DWORD PTR [rdx], eax
# Завершение
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
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
# Функция, которая печатаем ответ на экран пользовтаеля.
print_answer:
.LFB4:
	.cfi_startproc
	endbr64	
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48	
# Помещаем index_start из edi в -20 по стеку
	mov	DWORD PTR -20[rbp], edi	
# Помещаем counter из esi в -24 по стеку
	mov	DWORD PTR -24[rbp], esi
# Помещаем N из edx в -28 по стеку
	mov	DWORD PTR -28[rbp], edx
# Помещаем ссылку на str из rcx в -40 по стеку
	mov	QWORD PTR -40[rbp], rcx	
# if (counter != N) 
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	je	.L21
# printf("Ничего не найдено!\n");
	lea	rax, .LC7[rip]	
	mov	rdi, rax
	call	puts@PLT	
	jmp	.L22	
.L21:
# printf("Ответ:\n[%d]: ", N);
	mov	eax, DWORD PTR -28[rbp]	
	mov	esi, eax
	lea	rax, .LC8[rip]	
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
# for (int i = index_start-1; i < index_start+counter-1; i++) 
	mov	eax, DWORD PTR -20[rbp]	
	sub	eax, 1	
	mov	DWORD PTR -4[rbp], eax
# for (int i = index_start-1; i < index_start+counter-1; i++) 
	jmp	.L23
.L24:
# printf("%c", *(str+i));
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
# printf("%c", *(str+i));
	movzx	eax, BYTE PTR [rax]	
# printf("%c", *(str+i));
	movsx	eax, al	
	mov	edi, eax
	call	putchar@PLT
# for (int i = index_start-1; i < index_start+counter-1; i++) 
# i++
	add	DWORD PTR -4[rbp], 1
.L23:
# for (int i = index_start-1; i < index_start+counter-1; i++) 
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
# for (int i = index_start-1; i < index_start+counter-1; i++) {
	sub	eax, 1	
	cmp	DWORD PTR -4[rbp], eax
	jl	.L24
.L22:
# printf("\n-----------------------\n\n");
	lea	rax, .LC9[rip]
	mov	rdi, rax
	call	puts@PLT
# Завершение
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	print_answer, .-print_answer
	.globl	main
	.type	main, @function
# main
main:
.LFB5:
# Обязательная подготовка
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
# int main()
	mov	rax, QWORD PTR fs:40	
	mov	QWORD PTR -56[rbp], rax	
	xor	eax, eax	
	mov	rax, rsp
	mov	rbx, rax
# int N = get_N();
# Готовим регистр eax к получению N
	mov	eax, 0
	call	get_N
# Сохраняем N в -88 по стеку
	mov	DWORD PTR -88[rbp], eax	
# int size_of_string = get_size_of_string();
# Готовим регистр eax к получению размера строки 
	mov	eax, 0	
	call	get_size_of_string
# Сохраняем размер строки в -84 по стеку
	mov	DWORD PTR -84[rbp], eax
# char str[size_of_string];
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
.L26:
	cmp	rsp, rdx	
	je	.L27
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0	
	jmp	.L26
.L27:
	mov	rdx, rax	
	and	edx, 4095	
	sub	rsp, rdx	
	mov	rdx, rax	
	and	edx, 4095	
	test	rdx, rdx
	je	.L28
	and	eax, 4095	
	sub	rax, 8	
	add	rax, rsp	
	or	QWORD PTR [rax], 0	
.L28:
	mov	rax, rsp
	add	rax, 0
	mov	QWORD PTR -64[rbp], rax
# get_string(str, size_of_string);
# Готовимся к получению строки от пользователя edx <- size_of_string и rax <- str
	mov	edx, DWORD PTR -84[rbp]	
	mov	rax, QWORD PTR -64[rbp]	
	mov	esi, edx	
	mov	rdi, rax	
	call	get_string	
# find_index_count(str, size_of_string, N, counter_index);
# Готовимся к получению ответа edx <- N, esi <- size_of_string, rax <- str, rcx <- counter_index
	mov	edx, DWORD PTR -88[rbp]	
	mov	esi, DWORD PTR -84[rbp]	
	mov	rax, QWORD PTR -64[rbp]	
	lea	rcx, counter_index.0[rip]	
	mov	rdi, rax	
	call	find_index_count
# int index_start = counter_index[0];
	mov	eax, DWORD PTR counter_index.0[rip]
	mov	DWORD PTR -80[rbp], eax	
# int counter = counter_index[1];
	mov	eax, DWORD PTR counter_index.0[rip+4]	
	mov	DWORD PTR -76[rbp], eax	
# print_answer(index_start, counter, N, str);
# Готовимся к печати ответа rcx <- str, edx <- N, esi <- counter, edi <- index_start
	mov	rcx, QWORD PTR -64[rbp]	
	mov	edx, DWORD PTR -88[rbp]	
	mov	esi, DWORD PTR -76[rbp]	
	mov	eax, DWORD PTR -80[rbp]
	mov	edi, eax	
	call	print_answer
	mov	rsp, rbx	
	mov	eax, 0
# END
	mov	rdx, QWORD PTR -56[rbp]	
	sub	rdx, QWORD PTR fs:40	
	je	.L30	
	call	__stack_chk_fail@PLT	
.L30:
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
.LFE5:
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
