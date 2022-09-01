#include <stdio.h>
#include <stdlib.h>
#include <unistd.h> 
#include <pthread.h>

//
// to compile & run:
// gcc -pthread -g -o mthreads mthreads.c
// ./mthreads
//
struct thread_info {
	int count;
	char* name;
	struct timespec *ts;
};

void *thread_1(void *vargp) {
	struct thread_info *ti = (struct thread_info*)vargp;

	for (int i = 0; i < ti->count; i++) {
		nanosleep(ti->ts, NULL);
		printf("%s: %d.awake ...\n", ti->name, i);
	}

	return NULL;
}

int main()
{
	struct timespec ts = {0, 800000000};
	struct thread_info ti = {8, "thread_1 #1", &ts};

	pthread_t thread_id;
	printf("Main: Before Thread\n");
	pthread_create(&thread_id, NULL, thread_1, &ti);

	for (int i = 0; i < 6; i++) {
		nanosleep(&ts, NULL);
		printf("    Main: %d.awake ...\n", i);
	}

	pthread_join(thread_id, NULL);
	printf("Main: After Thread\n");
	exit(0);
}

