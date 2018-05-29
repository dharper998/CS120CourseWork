#include <stdio.h>
int main() {
  int isPrime;
  for(int i=3;i<=100;i++) {
    isPrime = 1;
    for(int x=2;x<i;x++) {
      if(i%x == 0) {
        isPrime = 0;
        break;
      }
    }
    if(isPrime) printf("%d\n", i);
  }
}
