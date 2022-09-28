#include <stdio.h>

int main(void) {


    // loop looks to print 10 numbers but actually never terminates
    double d = 9007199254740990;
    while (d < 9007199254741000) {
        printf("%lf\n", d); // always prints 9007199254740992.000000

        // 9007199254740993 can not be represented as a double
        // closest double is 9007199254740992.0
        // so 9007199254740992.0 + 1 = 9007199254740992.0
        d = d + 1;
    }

    return 0;
}