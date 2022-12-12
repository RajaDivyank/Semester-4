import 'dart:io';

void main(List<String> args) {
  print("Enter Number = ");
  int n = int.parse(stdin.readLineSync()!);
  bool flag = false;
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      flag = true;
      break;
    }
  }
  if (flag) {
    print("$n is Prime ");
  } else {
    print("$n is Not Prime");
  }
  checkUsingPositional(5);
}

//Program Using Positional Parameter
void checkUsingPositional(int n) {
  bool flag = false;
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      flag = true;
      break;
    }
  }
  if (flag) {
    print("1");
  } else {
    print("0");
  }
}

//program Using Named Parameter
void checkUsingNamed({required int n}) {
  bool flag = false;
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      flag = true;
      break;
    }
  }
  if (flag) {
    print("1");
  } else {
    print("0");
  }
}
