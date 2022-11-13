#include <stdio.h>

int get_N()
{
    int N = 0;
    while (N <= 1 || N >= 100)
    {
        printf("Введите N (длину искомой убывающей последовательности): ");
        scanf("%d", &N);
    }
    return N;
}

int get_size_of_string()
{
    int size_of_string = 0;
    while (size_of_string <= 1 || size_of_string >= 10000)
    {
        printf("Введите длину cтроки: ");
        scanf("%d", &size_of_string);
    }
    return size_of_string;
}

void get_string(char str[], int size_of_string)
{
    printf("Введите строку размера [%d]: ", size_of_string);
    scanf("%s", str);
}

void find_index_count(char str[], int size_of_string, int N, int counter_index[])
{
    int counter = 0;
    int index_start = 0;
    printf("Начинаем поиск первой убывающей последовательности размера [%d]\n\n", N);
    for (int i = 0; i < size_of_string; i++)
    {
        if (counter == N)
        {
            printf("Последовательность из [%d] символов найдена!\n", N);
            break;
        }
        if (counter == 0)
        {
            if (i > 0)
            {
                index_start = i;
                counter++;
            }
        }
        if (str[i - 1] > str[i])
        {
            counter++;
        }
        else
        {
            counter = 0;
            index_start = i;
            continue;
        }
    }
    counter_index[0] = index_start;
    counter_index[1] = counter;
}

void print_answer(int index_start, int counter, int N, char str[])
{
    if (counter != N)
    {
        printf("Ничего не найдено!\n");
    }
    else
    {
        printf("Ответ:\n[%d]: ", N);
        for (int i = index_start - 1; i < index_start + counter - 1; i++)
        {
            printf("%c", *(str + i));
        }
    }
    printf("\n-----------------------\n\n");
}

int get_N_file(char **argv)
{
    int N = 0;
    FILE *f = fopen(argv[1], "r");
    if(!f){ 
        puts("Файл не обнаружен. Будет создан файл с указанным именем");
        if(!(f = fopen(argv[1],"wb+"))) {
            exit(1);
        } 
    }
    fscanf(f, "%d; ", &N);
    fclose(f);
    return N;
}

int get_size_of_string_file(char **argv)
{
    int size_of_string = 0;
    FILE *f = fopen(argv[1], "r");
    fscanf(f, "%d; ", &size_of_string);
    fscanf(f, "%d:", &size_of_string);
    fclose(f);
    return size_of_string;
}

void get_string_file(char str[], int size, char **argv)
{
    int N = 0;
    FILE *f = fopen(argv[1], "r");
    int i = 0;
    char ch = 32;
    fscanf(f, "%d; ", &N);
    fscanf(f, "%d:", &N);
    while (fscanf(f, "%c", &ch) > 0 && i < size)
    {
        str[i++] = ch;
    }
    fclose(f);
}

void print_answer_file(char str[], int index_start, int counter, int N, char **argv)
{
    printf("Ответ в файле вывода!\n");
    FILE *f = fopen(argv[2], "w+");
    if (counter != N)
    {
        fprintf(f, "Ничего не найдено!\n");
    }
    else
    {
        fprintf(f, "[%d]: ", N);
        for (int i = index_start - 1; i < index_start + counter - 1; i++)
        {
            fprintf(f, "%c", *(str + i));
        }
    }
    fclose(f);
}

int generate_N()
{
    srand(time(0));
    int N = 2 + rand() % 19;
    printf("Сгенерированно число N = %d\n", N);
    return N;
}

int generate_size_of_string()
{
    srand(time(0));
    int size = 20 + rand() % 10000;
    printf("Сгенерирован размер строки = %d\n", size);
    return size;
}

int generate_string(char str[], int size_of_string)
{
    printf("Cтрока [%d]: ", size_of_string);
    char ch = 0;
    for (int i = 0; i < size_of_string; i++)
    {
        ch = (char)(33 + rand() % (127 - 33));
        str[i] = ch;
        printf("%c", ch);
    }
    printf("\n");
}

int get_type_of_input()
{
    int t = 0;
    while (t <= 0 || t > 2)
    {
        printf("Введите число (1 или 2): ");
        scanf("%d", &t);
    }
    printf("\n");
    return t;
}