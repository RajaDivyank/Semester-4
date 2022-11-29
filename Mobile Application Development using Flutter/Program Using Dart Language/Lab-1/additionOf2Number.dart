import 'dart:io';

void main(List<String> args) {
  print("Enter First Number = ");
  int? a = int.parse(stdin.readLineSync()!);
  print("Enter Second Number = ");
  int? b = int.parse(stdin.readLineSync()!);
  int sum = (a + b);
  print("Addition : $sum");
}
