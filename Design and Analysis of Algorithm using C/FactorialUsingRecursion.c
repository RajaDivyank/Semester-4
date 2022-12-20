// factorial using recursion in C language?
#include <stdio.h>

unsigned long long int calcFactorial(unsigned long long int n)
{
    return n == 0 ? 1 : n * calcFactorial(n - 1);
}

int main(void)
{
    unsigned long long int input = 0, answer = 0;

    printf("Enter number: ");
    scanf("%llu", &input);

    answer = calcFactorial(input);

    printf("The factorial of %llu is %llu.\n", input, answer);
}

// Enter number : 20 The factorial of 20 is 2432902008176640000.

unsigned long long int
calcFactorial(unsigned long long int n)
{
    return n < 2 ? 1 : n * calcFactorial(n - 1);
}
