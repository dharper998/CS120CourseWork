#include <stdio.h>
#include <stdlib.h>

void dashes(char * string) {
  for(char * temp = string ; *temp != '\0' ; temp++) {
    printf("%c", *temp);
    if(*(temp+1) != '\0') {
      printf("%c", '-');
    }
  }
}

void reverse(int * intArr, int size) {
  for(end = intArr+size-1; arr < end; arr++; end--) {
    int temp = *intArr;
    *intArr = *end;
    *end = temp;
  }
}

int main() {
  char summer[] = "Summer";
  dashes(summer);

  int intArr[] = {1, 2, 3, 4};
  reverse(intArr, sizeof(intArr));
}
