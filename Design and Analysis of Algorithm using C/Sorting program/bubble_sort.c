#include <stdio.h>
#include<time.h>

void main()
{
    double time_spent = 0.0;
    clock_t begin, end;
    begin = clock();
    FILE *fp, *fo;
    int a[100000], i, j, temp, ch;
    fo = fopen("output.txt", "w");
    printf("Enter the choice : 1:Best case\n 2:Average case\n 3:Worst case\n");
    scanf("%d", &ch);
    switch (ch)
    {
    case 1:
        fp = fopen("best.txt", "r");
        break;
    case 2:
        fp = fopen("average.txt", "r");
        break;
    case 3:
        fp = fopen("worst.txt", "r");
        break;
    default:
        printf("Invalid choice");
        break;
    }
    for (i = 0; i < 100000; i++)
    {
        fscanf(fp, "%d", &a[i]);
    }
    for (int i = 0; i < 100000 - 1; i++)
    {
        for (j = 0; j < 100000 - i - 1; j++)
        {
            if (a[j] > a[j + 1])
            {
                temp = a[j];
                a[j] = a[j + 1];
                a[j + 1] = temp;
            }
        }
    }
    for (i = 1; i <= 100000; i++)
    {
        fprintf(fo, "%d\n", i);
    }

    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time For Code = %lf ", time_spent);
}