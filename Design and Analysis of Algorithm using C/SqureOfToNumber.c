#include <stdio.h>
#include <time.h>
void main()
{
    double time_spent = 0.0;
    clock_t begin, end;
    begin = clock();

    int x, y, i = 1, ans = 1;
    printf("enter your number of base[X]\n");
    scanf("%d", &x);
    printf("enter your number of super[Y]\n");
    scanf("%d", &y);

    while (i <= y)
    {
        ans = ans * x;
        i++;
    }
    printf("\nyour answer is %d \n", ans);
    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time For Code = %lf ", time_spent);
}
