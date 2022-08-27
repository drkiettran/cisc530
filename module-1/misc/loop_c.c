#include <stdio.h>

int main() {
	int val = 100;
	
	for (int i = 0; i < 10; i++) {
		val += i;
	}

	printf("val=%d\n", val);
}
