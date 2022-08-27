#include <stdio.h>
#include <stdlib.h>

void basic_00() {
	printf("basic_00:\n");
	int i;
	int j=10;
	char* hello_str = "Hello, world!";

	printf("i=%d\n", i);
	printf("j=%d\n", j);
	printf("hello_str=%s\n", hello_str);
	printf("%s\n", hello_str);
	printf("Hello, world!\n");

	return;
}

void basic_01() {
	printf("basic_01:\n");
	int i = 100;
	int* ip = &i;
	int** ipp = &ip;
	long l = 12345;
	long* lp = &l;
	long** lpp = &lp;

	
	printf("i=0x%X\n",i);
	printf("ip=%p\n", (void*)ip);
	printf("ipp=%p\n",(void*)ipp);
	return;
}

void basic_02() {
	int ints[2] = {1,2};	
	int* intsp = &ints[0];
	
	printf("%d\n", *intsp);
	printf("%d\n", *(intsp+sizeof(int)));
	return;
}

void basic_03(){
	int a[10];
	int* b = calloc(10, sizeof(int));
	char* hello_str = "Hello, world!";

	b[0] = 123;

	free(b);
	return;
}


void basic_04() {
	struct foo_s {
		int a;
		char b;
	};

	struct bar_s {
		char ar[10];
		struct foo_s baz;
	};

	struct bar_s biz;
	biz.ar[0] = 'a';
	biz.baz.a = 4;
	struct bar_s* boz = &biz;
	boz->baz.b = 'b';

	return;

}

int main() {
	printf("Bootcamp code:\n\n");
	// basic_00();
	// basic_01();
	// basic_02();
	// basic_03();
	basic_04();
}
