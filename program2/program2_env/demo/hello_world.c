#include <stdio.h>
#include <stdlib.h>

void print_array(const int *array,const int size) {
  for (int i = 0; i < size; ++i) {
    printf("%d ",array[i]);
  }
  printf("\n");
}

int main () {
  // Hello World!
  printf("Hello World from gem5!\n");
  
  // Array
  int size = 10;
  int seed = 513;
  int n = 15;
  int array[size];
  srand(seed);
  for (int i = 0; i < size;++i) {
    array[i] = rand() % n;
  }
  print_array(array,size);
}
