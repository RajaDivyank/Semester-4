#include <stdio.h>
#include <time.h>

void main()
{
    double time_spent = 0.0;
    clock_t begin, end;
    begin = clock();
    int visited[10] = {0}, n, ne = 1, graph[10][10];
    int totalcost = 0, min, u, v, a, b, i, j, visited[1] = 1;

    printf("Enter Number of Nodes : ");
    scanf("%d", &n);
    for (i = 1; i <= n; i++)
    {
        for (j = 1; j <= n; j++)
        {
            printf("a[%d][%d] : ", i, j);
            scanf("%d", &graph[i][j]);
        }
    }
    while (ne < n)
    {
        for (i = 1; i <= n; i++)
        {
            min = 999;
            for (j = 1; j <= n; j++)
            {
                if (graph[i][j] < min)
                {
                    min = graph[i][j];
                    a = i;
                    b = j;
                }
            }
        }
    }
    if (visited[a] == 0 || visited[b] == 0)
    {
        totalcost += min;
        printf("Edge %d : %d-%d", ne, a, b);
        ne++;
        visited[a] = visited[b] = 1;
        graph[a][b] = graph[b][a] = 999;
    }

    // for (int i = 0; i < 3; i++)
    // {
    //     for (int j = 0; j < 3; j++)
    //     {
    //         printf("%d", a[i][j]);
    //     }
    // }

    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time For Code =%lf ", time_spent);
}