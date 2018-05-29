#include <stdio.h>
#include <stdlib.h>

struct Data {
  int i;
  char * ch;
};

struct Data * newData(char * ch) {
  struct Data * data = malloc(sizeof(struct Data));
  char * newString = malloc(sizeof(ch));
  int i = 0;
  for(char * temp = ch;*temp != '\0';temp++, i++) {
    *(newString + i) = *temp;
  }
  *(newString+i) = '\0';
  data->ch = newString;
  return data;
}

void deleteData(struct Data * d) {
  free(d->ch);
  free(d);
}



int main() {
  struct Data stack;
  stack.ch = "Goodbye";

  char string[] = "Hello";
  struct Data * heap = newData(string);

  deleteData(heap);
}
