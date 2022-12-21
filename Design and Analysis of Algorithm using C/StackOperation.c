#include <stdio.h>
#include <time.h>
#include <stdlib.h>
int top = -1, arr[10];
void main()
{
    // double time_spend = 0.0;
    // clock_t begin, end;
    // begin = clock();
    void push();
    void pop();
    void display();
    while (1)
    {
        int ch;
        printf("Enter choice :  \n 1 : push \n 2 : pop \n 3 : display \n 4 : end");
        scanf("%d", &ch);
        switch (ch)
        {
        case 1:
            push();
            break;
        case 2:
            display();
            break;
        case 3:
            exit(0);
        default:
            break;
        }
    }

    // end = clock();
    // time_spend = (double)(end - begin) / CLOCKS_PER_SEC;
    // printf("Time for code = %lf", time_spend);
}
void push()
{
    int x;
    if (top == 10 - 1)
    {
        printf("\nOverflow!!");
    }
    else
    {
        printf("\nEnter the element to be added onto the stack: ");
        scanf("%d", &x);
        top = top + 1;
        arr[top] = x;
    }
}
void display()
{
    if (top == -1)
    {
        printf("\nUnderflow!!");
    }
    else
    {
        printf("\nElements present in the stack: \n");
        for (int i = 0; i <= top; i++)
            printf("%d\n", arr[i]);
    }
}
