import 'dart:io';

void main(List<String> args) {
  print("Enter Number : ");
  int? n = int.parse(stdin.readLineSync()!);
  int fac = 1;
  for (int i = 1; i <= n; i++) {
    fac = fac * i;
  }
  print("Factorial : $fac");
}
