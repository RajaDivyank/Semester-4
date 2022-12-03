import 'dart:io';

void main(List<String> args) {
  print("Enter First Number : ");
  int? a = int.parse(stdin.readLineSync()!);
  print("Enter First Number : ");
  int? b = int.parse(stdin.readLineSync()!);
  print("Enter First Number : ");
  int? c = int.parse(stdin.readLineSync()!);
  if (a > b) {
    if (a > c) {
      print("Largest Number is : $a");
    } else {
      print("Largest Number is : $c");
    }
  } else {
    if (b > c) {
      print("Largest Number is : $b");
    } else {
      print("Largest Number is : $c");
    }
  }
}
