#include <stdio.h>
#include <time.h>
void main()
{
    double time_spend = 0.0;
    clock_t begin, end;
    begin = clock();

    

    end = clock();
    time_spend = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time for code = %lf", time_spend);
}
