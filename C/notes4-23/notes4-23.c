#include <stdio.h>
#include <stdlib.h>

void foo(int * num){
  (*num)++;
  printf("%d\n", *num);
}

int main() {
  int var = 10;
  foo(&var);



  printf("%d\n", __LINE__); //prints the line number
  printf("%d\n", __DATE__); //prints the date
}
