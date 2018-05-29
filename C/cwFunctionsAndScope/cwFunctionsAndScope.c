#include <stdio.h>

int main() {
  int x = 50;
  for(int i=0;i<3;i++) {
    inc(x);
  }
}

int inc(int param) {
  printf("%d\n", param++);
}

int primes(int max) {
  int isPrime;
  for(int i=3;i<max;i++) {
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
