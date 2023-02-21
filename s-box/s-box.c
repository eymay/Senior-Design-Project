
#include <stdint.h>
#include <inttypes.h>
#include <stdlib.h>
#include <stdio.h>

int main(){
    
    uint64_t x0, x1, x2, x3, x4;
    uint64_t t0, t1, t2, t3, t4;
x0 = 0;
x1 = 0;
x2 = 0;
x3 = 0;
x4 = 1;

x0 ^= x4;    x4 ^= x3;    x2 ^= x1;
t0  = x0;    t1  = x1;    t2  = x2;    t3  = x3;    t4  = x4;
t0 =~ t0;    t1 =~ t1;    t2 =~ t2;    t3 =~ t3;    t4 =~ t4;
t0 &= x1;    t1 &= x2;    t2 &= x3;    t3 &= x4;    t4 &= x0;
x0 ^= t1;    x1 ^= t2;    x2 ^= t3;    x3 ^= t4;    x4 ^= t0;
x1 ^= x0;    x0 ^= x4;    x3 ^= x2;    x2 =~ x2;

printf("x0 = %" PRIu64 ", x1 = %"PRIu64 " x2 = %"PRIu64 ", x3 = %"PRIu64 ", x4 = %" PRIu64, x0, x1, x2, x3, x4);

return 0;
}
