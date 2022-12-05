import 'dart:io';

void main(List<String> args) {
  print("Enter Number : ");
  int n = int.parse(stdin.readLineSync()!);
  int temp = 0;
  print("Reverse Order : ");
  while (n > 0) {
    temp = (n % 10);
    stdout.write(temp);
    n = (n ~/ 10);
  }
}
