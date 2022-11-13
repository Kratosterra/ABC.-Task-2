#include <stdio.h>
#include "functions.h"

int main(int argc, char **argv)
{
    int N = 0;
    if (argc != 3 && argc != 1) {
        puts("Неверное количество параметров, их всегда 2 - входной и выходной файл");
        return 1;
    } else if (argc == 3) {
        N = get_N_file(argv);
    } else {
        N = get_N();
    }
    int size_of_string = 0;
    if (argc == 3) {
        size_of_string = get_size_of_string_file(argv);
    } else {
        size_of_string = get_size_of_string();
    }
    char str[size_of_string];
    if (argc == 3) {
        get_string_file(str, size_of_string, argv);
    } else {
        get_string(str, size_of_string);
    }
    static int counter_index[2];
    find_index_count(str, size_of_string, N, counter_index);
    int index_start = counter_index[0];
    int counter = counter_index[1];
    if (argc == 3) {
        print_answer_file(str, index_start, counter, N, argv);
    } else {
        print_answer(index_start, counter, N, str);
    }
}