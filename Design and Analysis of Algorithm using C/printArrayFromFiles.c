#include <stdio.h>
#include <time.h>

void main()
{
    double time_spent = 0.0;
    clock_t begin, end;
    begin = clock();

    FILE *fp;
    int x[100], i = 0;
    fp = fopen("data.txt", "r");
    while (fscanf(fp, "%d", &x[i]) != EOF)
    {
        printf("%d\n", x[i]);
        i++;
    }
    fclose(fp);

    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time For Code = %lf ", time_spent);
}
