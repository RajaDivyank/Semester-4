import 'dart:io';

void main(List<String> args) {
  print("Enter Number : ");
  int? n = int.parse(stdin.readLineSync()!);
  bool flag = false;
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      flag = true;
      break;
    }
  }
  if (flag) {
    print("$n is Not a prime Number");
  } else {
    print("$n is a Prime Number");
  }
}
