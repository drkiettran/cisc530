#include <limits.h>
#include <float.h>
#include <stdio.h>

int main () {

    short max_short = SHRT_MAX;
    short min_short = SHRT_MIN;
    unsigned short max_ushort = USHRT_MAX;

    int max_int = INT_MAX;
    int min_int = INT_MIN;
    unsigned int max_uint = UINT_MAX;

    long max_long = LONG_MAX;
    long min_long = LONG_MIN;
    unsigned long max_ulong = ULONG_MAX;

    float max_float = FLT_MAX;
    float min_float = FLT_MIN;

    double max_double = DBL_MAX;
    double min_double = DBL_MIN;

    printf("max_short  = %d = %X\n", max_short, max_short);
    printf("min_short  = %d = %X\n", min_short, min_short);
    printf("max_ushort = %u = %X\n\n", max_ushort, max_ushort);

    printf("max_int    = %d = %X\n", max_int, max_int);
    printf("min_int    = %d = %X\n", min_int, min_int);
    printf("max_uint   = %u = %X\n\n", max_uint, max_uint);
    
    union {
        unsigned long l;
        unsigned int u[2];
    } l2u = {.l=max_long};
    
    printf("max_long   = %ld = %X:%X\n", l2u.l, l2u.u[1], l2u.u[0]);

    l2u.l = min_long;
    printf("min_long   = %ld = %X:%X\n", l2u.l, l2u.u[1], l2u.u[0]);

    l2u.l = max_ulong;
    printf("max_ulong  = %lu = %X:%X\n\n", l2u.l, l2u.u[1], l2u.u[0]);

    union {
        float f;
        unsigned int u;
    } f2u = {.f=max_float};
    printf("max_float  = %e = %X\n", f2u.f, f2u.u);

    f2u.f = min_float;
    printf("min_float  = %e = %X\n\n", f2u.f, f2u.u);

    union {
        double d;
        unsigned int u[2];
    } d2u = {.d=max_double};

    printf("max_double = %e = %X:%X\n", d2u.d, d2u.u[1], d2u.u[0]);

    d2u.d = min_double;
    printf("min_double = %e = %X:%X\n\n\n", d2u.d, d2u.u[1], d2u.u[0]);

    return 0;
}