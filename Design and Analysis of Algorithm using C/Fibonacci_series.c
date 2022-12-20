#include <stdio.h>
#include <time.h>

void main()
{
    double time_spent = 0.0;
    clock_t begin, end;
    begin = clock();

    int n, t1 = 0, t2 = 1;
    int temp = t1 + t2;
    printf("Enter term = ");
    scanf("%d", &n);
    printf("Fibonacci Series : %d , %d , ", t1, t2);
    for (int i = 3; i <= n; i++)
    {
        printf("%d ,", temp);
        t1 = t2;
        t2 = temp;
        temp = t1 + t2;
    }

    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time For Code =%lf ", time_spent);
}