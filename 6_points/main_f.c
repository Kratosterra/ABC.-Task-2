#include <stdio.h>

int get_N() {
    int N = 0;
    while (N <= 1 || N >= 100) {
        printf("Введите N (длину искомой убывающей последовательности): ");
        scanf("%d", &N);
    }
    return N;
}

int get_size_of_string() {
    int size_of_string = 0;
    while (size_of_string  <= 1 || size_of_string  >= 10000) {
        printf("Введите длину cтроки: ");
        scanf("%d", &size_of_string);
    }
    return size_of_string;
}

void get_string(char str[], int size_of_string) {
    printf("Введите строку размера [%d]: ", size_of_string);
    scanf("%s", str);
}

void find_index_count(char str[], int size_of_string, int N, int counter_index[]) {
    int counter = 0;
    int index_start = 0;
    printf("Начинаем поиск первой убывающей последовательности размера [%d]\n\n", N);
    for (int i = 0; i < size_of_string; i++) {
        if (counter == N) {
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
    }
    counter_index[0] = index_start;
    counter_index[1] = counter;
}

void print_answer(int index_start, int counter, int N, char str[]) {
    if (counter != N) {
        printf("Ничего не найдено!\n");
    } else {
        printf("Ответ:\n[%d]: ", N);
        for (int i = index_start-1; i < index_start+counter-1; i++) {
            printf("%c", *(str+i));
        }
    }
    printf("\n-----------------------\n\n");
}

int main() {
    int N = get_N();
    int size_of_string = get_size_of_string();
    char str[size_of_string];
    get_string(str, size_of_string);
    static int counter_index[2];
    find_index_count(str, size_of_string, N, counter_index);
    int index_start = counter_index[0];
    int counter = counter_index[1];
    print_answer(index_start, counter, N, str);
}