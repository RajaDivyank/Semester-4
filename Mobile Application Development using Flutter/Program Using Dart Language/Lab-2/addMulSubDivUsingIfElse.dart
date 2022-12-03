import 'dart:io';

void main(List<String> args) {
  print(
      "Enter which task perform addition , subtraction , multiplication , division");
  String? str = stdin.readLineSync();
  print("Enter first number = ");
  double? n1 = double.parse(stdin.readLineSync()!);
  print("Enter Second number = ");
  double? n2 = double.parse(stdin.readLineSync()!);
  if (str == '+') {
    var sum = (n1 + n2);
    print("Addition : $sum");
  } else if (str == '-') {
    var sub = (n1 - n2);
    print("Subtraction : $sub");
  } else if (str == '*') {
    var mul = (n1 * n2);
    print("Multiplication : $mul");
  } else if (str == '/') {
    var div = (n1 / n2);
    print("Division : $div");
  } else {
    print("Enter Valid String");
  }
}
