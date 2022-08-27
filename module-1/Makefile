CC=gcc
# -I - tell make to look for include files at this location
CFLAGS=-I. 

bootcamp: bootcamp.o
	$(CC) -o bootcamp bootcamp.o

bootcamp.o: bootcamp.c
	$(CC) -c -o bootcamp.o bootcamp.c

bootcamp_debug: bootcamp.c
	$(CC) -c -g -o bootcamp.o bootcamp.c
	$(CC) -o bootcamp bootcamp.o

clean:
	rm *.o
	rm bootcamp
