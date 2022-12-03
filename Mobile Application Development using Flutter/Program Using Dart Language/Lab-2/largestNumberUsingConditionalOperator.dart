import 'dart:io';

void main(List<String> args) {
  print("Enter First Number : ");
  int? a = int.parse(stdin.readLineSync()!);
  print("Enter First Number : ");
  int? b = int.parse(stdin.readLineSync()!);
  print("Enter First Number : ");
  int? c = int.parse(stdin.readLineSync()!);
  var ans = a > b
      ? a > c
          ? print("Largest Number is : $a")
          : print("Largest Number is : $c")
      : b > c
          ? print("Largest Number is : $b")
          : print("Largest Number is : $c");
}
