#ifndef FUNCTIONS_H
#define FUNCTIONS_H

int get_N();

int get_size_of_string();

void get_string(char str[], int size_of_string);

void find_index_count(char str[], int size_of_string, int N, int counter_index[]);

void print_answer(int index_start, int counter, int N, char str[]);

int get_N_file(char **argv);

int get_size_of_string_file(char **argv);

void get_string_file(char str[], int size, char **argv);

void print_answer_file(char str[], int index_start, int counter, int N, char **argv);
     
#endif /*FUNCTIONS_H*/
