import 'dart:io';

void main(List<String> args) {
  print("Enter String : ");
  String s = stdin.readLineSync()!;
  print(s.split("").reversed.join());
}
