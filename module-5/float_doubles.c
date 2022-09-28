#include <stdio.h>

int main() {
    float f = 1.1;
    double d = 1.1;

    union {
        float f;
        unsigned int u;
    } f2u = {.f = f};
    printf("float  = %e = %X\n", f2u.f, f2u.u);

    union {
        double d;
        unsigned int u[2];
    } d2u = {.d = d};
    printf("double = %e = %X:%X\n\n\n", d2u.d, d2u.u[1], d2u.u[0]);

}