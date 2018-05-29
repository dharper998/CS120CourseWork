#include <stdio.h>

int main() {
  int nums[] = {10, 11, 12};
  char str[] = "C programming is great";
  printf("%s\n", str);

  printf("%d\n", sizeof(str));

  printf("%c\n", str[0]);

  printf("%X\n", str[2]);

  printf("%d\n", str[1] + nums[1]);

  printf("%d\n", sizeof(nums));

  printf("%d\n", sizeof(nums)/sizeof(int));
}
