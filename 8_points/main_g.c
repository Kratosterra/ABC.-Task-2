#include <stdio.h>
#include <time.h>
#include "functions.h"

int main(int argc, char **argv)
{
    int N = 0;
    int type = 0;
    if (argc != 3 && argc != 1 && argc != 2) {
        puts("Неверное количество параметров, их всегда 1 - [-g] (генерация) или 2 - входной и выходной файл");
        return 1;
    } else if (argc == 3) {
        N = get_N_file(argv);
    } else if (argc == 2) {
        N = generate_N();
    } else {
        printf("Выберете тип ввода.\n-----------\n1) Вручную\n2) Автоматически\n");
        type = get_type_of_input();
        if (type == 1) {
            N = get_N();
        } else {
            N = generate_N();
        }
    }
    int size_of_string = 0;
    if (argc == 3) {
        size_of_string = get_size_of_string_file(argv);

    } else if (argc == 2 || type == 2) {
        size_of_string = generate_size_of_string();
    }
    else {
        size_of_string = get_size_of_string();
    }
    char str[size_of_string];
    if (argc == 3) {
        get_string_file(str, size_of_string, argv);
    } else if (argc == 2 || type == 2) {
        generate_string(str, size_of_string);
    } else {
        get_string(str, size_of_string);
    }
    static int counter_index[2];
    clock_t begin = clock();
    find_index_count(str, size_of_string, N, counter_index);
    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Время исполнения программы: %f\n", time_spent);
    int index_start = counter_index[0];
    int counter = counter_index[1];
    if (argc == 3) {
        print_answer_file(str, index_start, counter, N, argv);
    } else {
        print_answer(index_start, counter, N, str);
    }
}