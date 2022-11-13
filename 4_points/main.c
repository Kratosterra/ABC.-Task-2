#include <stdio.h>
int main() {
    int N = 0;
    int size_of_string = 0;
    int counter = 0;
    int index_start = 0;

    while (N <= 1 || N >= 100) {
        printf("Введите N (длину искомой убывающей последовательности): ");
        scanf("%d", &N);
    }
    while (size_of_string  <= 1 || size_of_string  >= 10000) {
        printf("Введите длину cтроки: ");
        scanf("%d", &size_of_string);
    }
    char str[size_of_string];
    printf("Введите строку размера [%d]: ", size_of_string);
    scanf("%s", str);
    printf("Начинаем поиск первой убывающей последовательности размера [%d]\n\n", N);
    for (int i = 0; i < size_of_string; i++) {
        if (counter == N)
        {
            printf("Последовательность из [%d] символов найдена!\n", N);
            break;
        }
        if (counter == 0) {
            if (i > 0)
            {
                index_start = i;
                counter++;
            }
        }
        if (str[i-1] > str[i]) {
            counter++;
        } else {
            counter = 0;
            index_start = i;
            continue;
        }
        if (i == size_of_string - 1)
        {
            if (counter == N)
            {
                printf("Последовательность из [%d] символов найдена!\n", N);
                break;
            }
            printf("Ничего не найдено!\n");
            return 0;
        }
    }
    if (counter != N)
    {
        printf("Ничего не найдено!\n");
        return 0;
    }
    printf("Ответ:\n[%d]: ", N);
    for (int i = index_start-1; i < index_start+counter-1; i++)
    {
        printf("%c", *(str+i));
    }
    printf("\n-----------------------\n\n");
}