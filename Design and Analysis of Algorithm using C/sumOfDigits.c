#include <stdio.h>
#include <time.h>

void main()
{
    double time_spent = 0.0;
    clock_t begin, end;
    begin = clock();

    int n, sum = 0;
    printf("Enter Number = ");
    scanf("%d", &n);
    while (n > 0)
    {
        sum = sum + (n % 10);
        n = n / 10;
    }
    printf("Sum = %d \n", sum);

    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time For Code = %lf ", time_spent);
}
