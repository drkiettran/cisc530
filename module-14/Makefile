CC=gcc
# -I - tell make to look for include files at this location
CFLAGS=-I. 

csapp.o: csapp.c csapp.h
	$(CC) -c -o csapp.o csapp.c	

hostinfo: hostinfo.o csapp.o
	$(CC) -pthread -o hostinfo hostinfo.o csapp.o

hostinfo.o: hostinfo.c csapp.h
	$(CC) -c -o hostinfo.o hostinfo.c
	
echoserveri: echoserveri.o csapp.o echo.o
	$(CC) -pthread -o echoserveri echoserveri.o csapp.o echo.o

echoserveri.o: echoserveri.c csapp.h
	$(CC) -c -o echoserveri.o echoserveri.c 

echo.o: echo.c csapp.h 
	$(CC) -c -o echo.o echo.c 

echoclient: echoclient.o csapp.o 
	$(CC) -pthread -o echoclient echoclient.o csapp.o 

echoclient.o: echoclient.c csapp.h 
	$(CC) -c -o echoclient.o echoclient.c 

adder: adder.o csapp.o 
	$(CC) -pthread -o adder adder.o csapp.o 

adder.o: adder.c csapp.h 
	$(CC) -c -o adder.o adder.c 

tiny: tiny.o csapp.o
	$(CC) -pthread -o tiny tiny.o csapp.o 

tiny.o: tiny.c csapp.h 
	$(CC) -c -o tiny.o tiny.c 

all: hostinfo echoserveri echoclient adder tiny

clean:
	rm *.o
	rm hostinfo echoserveri echoclient adder tiny 

