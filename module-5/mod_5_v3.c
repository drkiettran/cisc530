int fixed_f(int i1, int i2, int i3, int i4) {
    int ret_i = ((i1 + i2) * i3) / i4;
    return ret_i;
}

float float_f(float f1, float f2, float f3, float f4) {
    float ret_f = ((f1 + f2) * f3) / f4;
    return ret_f;
}

double double_f(double d1, double d2, double d3, double d4) {
    double ret_f = ((d1 + d2) * d3) / d4;
    return ret_f;
}

int main() {
    // ((1 + 2) * 3) / 4 = 2.25
    // ((1.1 + 2.2) * 3.3) / 4.4 = 2.475

    int res_i = 111, i1 = 1, i2 = 2, i3 = 3, i4 = 4;
    float res_f = 222.22, f1 = 1.1, f2 = 2.2, f3=3.3, f4=4.4;
    double res_d = 333.33, d1 = 1.1, d2=2.2, d3=3.3, d4=4.4;

    res_i = fixed_f(i1, i2, i3, i4);
    res_f = float_f(f1, f2, f3, f4);
    res_d = double_f(d1, d2, d3, d4);
    return 0;
}
