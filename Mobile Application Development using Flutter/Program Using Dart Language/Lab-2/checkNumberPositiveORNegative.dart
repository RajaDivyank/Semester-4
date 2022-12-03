import 'dart:io';

void main(List<String> args) {
  print("Enter Number : ");
  int? n = int.parse(stdin.readLineSync()!);
  if (n > 0) {
    print("Number is Positive : $n");
  } else if (n < 0) {
    print("Number is Negative : $n");
  } else {
    print("Number is Zero");
  }
}
