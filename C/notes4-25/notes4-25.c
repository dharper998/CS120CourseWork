#include <stdio.h>
#include <stdlib.h>

char * foo(char string[]){
  string[0] = 'J';
}

int main() {
  char ptr[] = "Hello"; //Arrays degrade to pointers when they are passed as params
  //foo(ptr);
  for(char * temp = ptr; *temp == '\0'; temp ++) {
    printf("%c", *temp); //Loops through a string and prints each character
  }


  int intptr[4] = {1, 2, 3, 4};
  for(int * temp = intptr; temp < intptr + 4; temp ++) {
    printf("%d", *temp);  //Loops through an int array and prints each value
  }
  //printf("%d\n", ptr);

  printf("%d\n", intptr[3]);  //These both print out the fourth element of the array
  printf("%d\n", *(intptr + 3));
}
