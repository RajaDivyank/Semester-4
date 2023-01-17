#include <stdio.h>
#include <time.h>

long int a[1000000], t[1000000];

void merge_sort(long int low, long int mid, long int high)
{
    long int i, j, k;
    i = low;
    j = mid + 1;
    k = low;

    while (i <= mid && j <= high)
    {
        if (a[i] >= a[j])
        {
            t[k++] = a[j++];
        }
        else
        {
            t[k++] = a[i++];
        }
    }
    while (i <= mid)
    {
        t[k++] = a[i++];
    }
    while (j <= high)
    {
        t[k++] = a[j++];
    }
    for (i = low; i <= high; i++)
    {
        a[i] = t[i];
    }
}

void merge_sort_div(long int low, long int high)
{
    long int mid;
    if (low != high)
    {
        mid = ((low + high) / 2);
        merge_sort_div(low, mid);
        merge_sort_div(mid + 1, high);
        merge_sort(low, mid, high);
    }
}

void main()
{
    double time_spent = 0.0;
    clock_t begin, end;
    begin = clock();
    FILE *fp, *fo;
    int i, j, ch, total;
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
    printf("Enter Element : ");
    scanf("%d", &total);

    for (i = 0; i < total; i++)
    {
        fscanf(fp, "%d", &a[i]);
    }

    merge_sort_div(0, total - 1);

    for (i = 0; i < total; i++)
    {
        fprintf(fo, "%d\n", a[i]);
    }
    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time For Code = %lf ", time_spent);
}
