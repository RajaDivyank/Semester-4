import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  print("Enter weight in pound : ");
  int? p = int.parse(stdin.readLineSync()!);
  print("Enter Height in Inch : ");
  int? n = int.parse(stdin.readLineSync()!);
  double kg = (p * 0.45359237);
  double m = (n * 0.254);
  double ans = 10 * (kg / m);
  print("BMI of healthy person is : $ans");
}
