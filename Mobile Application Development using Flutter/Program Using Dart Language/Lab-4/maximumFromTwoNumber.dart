import 'dart:io';

void main(List<String> args) {
  print("Enter First Number : ");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Number : ");
  int n2 = int.parse(stdin.readLineSync()!);
  if (n1 > n2) {
    print("Maximum is $n1");
  } else {
    print("Maximum is $n2");
  }
  maximumFrom2UsingPositional(5, 2);
  maximumFrom2UsingNamed(n1: 10, n2: 5);
}

//Program Using Positional Parameter
void maximumFrom2UsingPositional(int n1, [int n2 = 0]) {
  if (n1 > n2) {
    print("Maximum is $n1");
  } else {
    print("Maximum is $n2");
  }
}

//program Using Named Parameter
void maximumFrom2UsingNamed({required int n1, required int n2}) {
  if (n1 > n2) {
    print("Maximum is $n1");
  } else {
    print("Maximum is $n2");
  }
}
