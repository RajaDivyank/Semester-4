import 'dart:io';

void main(List<String> args) {
  print("Enter How Many Digit of Fibonacci Series you want : ");
  int? n = int.parse(stdin.readLineSync()!);
  int n1 = 0, n2 = 1, n3;
  print(n1);
  print(n2);

  for (int i = 2; i < n; i++) {
    n3 = n1 + n2;
    print('$n3');
    n1 = n2;
    n2 = n3;
  }
  fibonacciUsingPositional(5);
  fibonacciUsingNamed(n: 5);
}

//Program Using Positional Parameter
void fibonacciUsingPositional(int n) {
  int n1 = 0, n2 = 1, n3;
  print(n1);
  print(n2);

  for (int i = 2; i < n; i++) {
    n3 = n1 + n2;
    print('$n3');
    n1 = n2;
    n2 = n3;
  }
}

//program Using Named Parameter
void fibonacciUsingNamed({required int n}) {
  int n1 = 0, n2 = 1, n3;
  print(n1);
  print(n2);

  for (int i = 2; i < n; i++) {
    n3 = n1 + n2;
    print('$n3');
    n1 = n2;
    n2 = n3;
  }
}
