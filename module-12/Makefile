CC=gcc
# -I - tell make to look for include files at this location
CFLAGS=-I. 

csapp.o: csapp.c csapp.h
	$(CC) -c -o csapp.o csapp.c	

ch10_1: ch10_1.o csapp.o
	$(CC) -pthread -o ch10_1 ch10_1.o csapp.o

ch10_2.o: ch10_2.c csapp.h
	$(CC) -c -o ch10_2.o ch10_2.c

ch10_2: ch10_2.o csapp.o
	$(CC) -pthread -o ch10_2 ch10_2.o csapp.o

ch10_1.o: ch10_1.c csapp.h
	$(CC) -c -o ch10_1.o ch10_1.c

ch10_3: ch10_3.o csapp.o
	$(CC) -pthread -o ch10_3 ch10_3.o csapp.o

ch10_3.o: ch10_3.c csapp.h
	$(CC) -c -o ch10_3.o ch10_3.c

ch10_ex3: ch10_ex3.o csapp.o
	$(CC) -pthread -o ch10_ex3 ch10_ex3.o csapp.o

ch10_ex3.o: ch10_ex3.c csapp.h
	$(CC) -c -o ch10_ex3.o ch10_ex3.c

ch10_5: ch10_5.o csapp.o
	$(CC) -pthread -o ch10_5 ch10_5.o csapp.o

ch10_5.o: ch10_5.c csapp.h
	$(CC) -c -o ch10_5.o ch10_5.c

ch10_ex5: ch10_ex5.o csapp.o
	$(CC) -pthread -o ch10_ex5 ch10_ex5.o csapp.o

ch10_ex5.o: ch10_ex5.c csapp.h
	$(CC) -c -o ch10_ex5.o ch10_ex5.c

ch10_11: ch10_11.o csapp.o
	$(CC) -pthread -o ch10_11 ch10_11.o csapp.o

ch10_11.o: ch10_11.c csapp.h
	$(CC) -c -o ch10_11.o ch10_11.c

ch10_1_debug: ch10_1.c
	$(CC) -c -g -o ch10_1.o ch10_1.c
	$(CC) -o ch10_1 ch10_1.o

all: ch10_1 ch10_2 ch10_3 ch10_ex3 ch10_ex5 ch10_5 ch10_11

clean:
	rm *.o
	rm ch10_1 ch10_2 ch10_3 ch10_ex3 ch10_5 ch10_ex5 ch10_11
