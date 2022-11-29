import 'dart:io';

void main() {
  print("Enter first number = ");
  double? n1 = double.parse(stdin.readLineSync()!);
  print("Enter Second number = ");
  double? n2 = double.parse(stdin.readLineSync()!);
  var addition = (n1 + n2);
  var subtraction = (n1 - n2);
  var multiplication = (n1 * n2);
  var division = (n1 / n2);
  print("Addition : $addition");
  print("Subtraction : $subtraction");
  print("Multiplication : $multiplication");
  print("Divide : $division");
}
