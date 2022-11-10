#include <stdio.h>
#include <stdlib.h>

int main() {
    FILE *fp;
    fp = fopen("fseek.txt", "w+");
    fputs("this is an example", fp);
    fseek(fp, 8, SEEK_SET);
    fputs("CISC 530 class\n", fp);
    fclose(fp);
    exit(0);
}