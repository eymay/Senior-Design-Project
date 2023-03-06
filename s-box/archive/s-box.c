
#include <stdint.h>
#include <inttypes.h>
#include <stdlib.h>
#include <stdio.h>



void sbox(uint64_t *input){
    uint64_t t0, t1, t2, t3, t4;
    uint64_t x0 = input[0];
    uint64_t x1 = input[1];
 uint64_t    x2 = input[2];
 uint64_t    x3 = input[3];
 uint64_t    x4 = input[4];

x0 ^= x4;    x4 ^= x3;    x2 ^= x1;
t0  = x0;    t1  = x1;    t2  = x2;    t3  = x3;    t4  = x4;
t0 =~ t0;    t1 =~ t1;    t2 =~ t2;    t3 =~ t3;    t4 =~ t4;
t0 &= x1;    t1 &= x2;    t2 &= x3;    t3 &= x4;    t4 &= x0;
x0 ^= t1;    x1 ^= t2;    x2 ^= t3;    x3 ^= t4;    x4 ^= t0;
x1 ^= x0;    x0 ^= x4;    x3 ^= x2;    x2 =~ x2;

input[0] = x0;
input[1] = x1;
input[2] = x2;
input[3] = x3;
input[4] = x4;
}

void printer(uint64_t *input){
    uint64_t x0 = input[0];
    uint64_t x1 = input[1];
 uint64_t    x2 = input[2];
 uint64_t    x3 = input[3];
 uint64_t    x4 = input[4];
printf("x0 = %" PRIu64 ", x1 = %"PRIu64 " x2 = %"PRIu64 ", x3 = %"PRIu64 ", x4 = %" PRIu64, x0, x1, x2, x3, x4);
}

int main(){
    
    uint64_t input[5] = {0};



//printer(input);
    sbox(input);
//printer(input);


return 0;
}
