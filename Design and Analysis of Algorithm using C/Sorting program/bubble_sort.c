#include <stdio.h>

void main()
{
    FILE *fp;
    fp = fopen("data.txt", "r");
    int a[100000], i, j, temp, n;
    printf("Enter Number : ");
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        fscanf(fp, "%d", &a[i]);
    }
    for (int i = 0; i < n - 1; i++)
    {
        for (j = 0; j < n - i - 1; j++)
        {
            if (a[j] > a[j + 1])
            {
                temp = a[j];
                a[j] = a[j + 1];
                a[j + 1] = temp;
            }
        }
    }
    for (i = 0; i < n; i++)
    {
        printf("%d\n", a[i]);
    }
}