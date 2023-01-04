#include <stdio.h>
#include <time.h>

void main()
{
    double time_spent = 0.0;
    clock_t begin, end;
    begin = clock();
    FILE *fp, *fo;
    int a[100000],c[100000],b[100000], i, j, temp = 0, ch;
    fo = fopen("output.txt", "w");
    printf("Enter the choice : 1:Best case\n 2:Average case\n 3:Worst case\n");
    scanf("%d", &ch);
    switch (ch){
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
    for (i = 1; i <= 100000; i++){
        fscanf(fp, "%d", &a[i]);
    }
    for (i = 1; i <= 100000; i++){
        c[i] = 0;
    }
    for (j = 1 ; j <= 100000; i++){
        c[a[j]] = c[a[j]] + 1;
    }
    for (i = 2; i < 100000; i++){
        c[i] = c[i] + c[i-1];
    }
    for (j = 0; i < 100000; i++){
        b[c[a[j]]] = a[j];
        c[a[j]] = c[a[j]] - 1;
    }
    for (i = 1; i <= 100000; i++){
        fprintf(fo, "%d\n", i);
    }
    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time For Code = %lf ", time_spent);
}
