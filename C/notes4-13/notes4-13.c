#include <stdio.h>
int main() {
  int f = 3;
  f++;
  printf("%d\n", f);

  printf("%f\n", 4 + 5.3);

  printf("%d\n", 1 && 0); //1 is true, 0 is false
  printf("%d\n", 1 || 0);

  int x = 5;
  if(x >= 5 && x < 10) {
    printf("If");
  }else if(x == 2) {
    printf("else if");
  }else {
    printf("Else");
  }

  for(int x = 0; x < 5; x++) {
    printf("%d\n", x);
  }
}
