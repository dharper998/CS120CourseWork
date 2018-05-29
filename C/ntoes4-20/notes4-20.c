int main() {
  int * ptr, num = 5;
  ptr = &num;
  int cp = *ptr;

  char str[] = "Hello";
  char * ptr2 = str;
  printf("%d\n", ptr2[1]);


  int rescued = 0, num_days = 0, food = 20;
  while(!rescued) {
    ration = surviveTheDay(num_days, food);
    nextDay();
    printf("You can eat %d foods\n", ration);
  }
}
