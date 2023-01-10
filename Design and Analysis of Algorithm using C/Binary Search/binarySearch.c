#include <stdio.h>
#include <time.h>
void main()
{
    double time_spent = 0.0;
    clock_t begin, end;
    begin = clock();
    FILE *fp, *fo;
    int a[100000], i = 1, j = 100000, n, k, ch;
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
    printf("Enter Which Number You want to Search = ");
    scanf("%d", &n);
    for (i = 1; i <= 100000; i++)
    {
        fscanf(fp, "%d", &a[i]);
    }
    binary(a,i,j,n);
    

    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time For Code = %lf ", time_spent);
}
int binary(int a[],int i,int j,int n){
    while (i<j){
        int k = (i+j)/2;
        if(n<a[k]){
            j=k;
        }else{
            i = k+1;
        }
    }
    return i;
}
