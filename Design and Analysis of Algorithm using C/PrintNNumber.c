#include <stdio.h>
#include <time.h>

void main()
{
    double time_spent = 0.0;
    clock_t begin, end;
    begin = clock();
    int f;
    printf("Enter Number = \n");
    scanf("%d", &f);
    for (int i = 1; i <= f; i++)
    {
        printf("%d\n", i);
    }
    end = clock();

    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time For Code =%lf ", time_spent);
}