import 'dart:io';

void main() {
  print(
      "Enter which task perform addition , subtraction , multiplication , division");
  String? str = stdin.readLineSync();
  print("Enter first number = ");
  double? n1 = double.parse(stdin.readLineSync()!);
  print("Enter Second number = ");
  double? n2 = double.parse(stdin.readLineSync()!);
  switch (str) {
    case '+':
      {
        var sum = (n1 + n2);
        print("Addition : $sum");
      }
      break;
    case '-':
      {
        var sub = (n1 - n2);
        print("Subtraction : $sub");
      }
      break;
    case '*':
      {
        var mul = (n1 * n2);
        print("Multiplication : $mul");
      }
      break;
    case '/':
      {
        var div = (n1 / n2);
        print("Division : $div");
      }
      break;
    default:
      {
        print("Enter Valid Word");
      }
  }
}
