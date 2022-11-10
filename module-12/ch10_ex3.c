#include "csapp.h"

int main() {
    char c;
    
    // Enter ctrl-d to exit (result in 0) 
    while (read(STDIN_FILENO, &c, 1) != 0) {
        write(STDOUT_FILENO, &c, 1);
    }
    printf("DONE!\n");
    exit(0);
}