#include<stdio.h>
#include<stdlib.h>

int main(){
	int *ptr;
	ptr = malloc(sizeof(int));
	*ptr = 18;
	printf("%d\n",*(ptr+1));
}
