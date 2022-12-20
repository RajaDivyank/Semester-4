#include <stdio.h>
#include <time.h>

void main()
{
    double time_spent = 0.0;
    clock_t begin, end;
    begin = clock();

    int sum = 0, i, n;
    printf("Enter Start number = ");
    scanf("%d", &i);
    printf("Enter end number = ");
    scanf("%d", &n);
    while (i <= n)
    {
        sum = sum + i;
        i++;
    }
    printf("%d", sum);
    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("\nTime For Code = %lf", time_spent);
}