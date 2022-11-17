CC=gcc
# -I - tell make to look for include files at this location
CFLAGS=-I. 

csapp.o: csapp.c csapp.h
	$(CC) -c -o csapp.o csapp.c	

echo.o: echo.c
	$(CC) -c -o echo.o echo.c	

echoserverp: echoserverp.o csapp.o echo.o
	$(CC) -pthread -o echoserverp echoserverp.o csapp.o echo.o

echoserverp.o: echoserverp.c csapp.h
	$(CC) -c -o echoserverp.o echoserverp.c

echoclient.o: echoclient.c csapp.h
	$(CC) -c -o echoclient.o echoclient.c

echoclient: echoclient.o
	$(CC) -pthread -o echoclient echoclient.o csapp.o

select.o: select.c csapp.h
	$(CC) -c -o select.o select.c 

select: select.o csapp.o echo.o
	$(CC) -pthread -o select select.o csapp.o echo.o

echoservers.o: echoservers.c csapp.h
	$(CC) -c -o echoservers.o echoservers.c

echoservers: echoservers.o csapp.o
	$(CC) -pthread -o echoservers echoservers.o csapp.o

echoservert.o: echoservert.c csapp.h
	$(CC) -c -o echoservert.o echoservert.c

echoservert: echoservert.o echo.o csapp.o
	$(CC) -pthread -o echoservert echoservert.o echo.o csapp.o
	
all: echoserverp echoclient select echoservers echoservert

clean:
	rm *.o
	rm echoserverp echoclient select echoservers echoservert
