//Write a dart code to create and read a phone Book dictionary.
import 'dart:io';

void main(List<String> args) {
  Map<String, dynamic> list = {};
  print("enter how many phone book entry you want to enter ?");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    print("enter[" + i.toString() + "] person name ");
    String temp = stdin.readLineSync()!.toLowerCase();
    print("enter[" + i.toString() + "] person number ");
    int number = int.parse(stdin.readLineSync()!);
    list[temp] = number;
  }

  print("=====================================================");
  print("enter who's number you want to get ?");
  String l = stdin.readLineSync()!.toLowerCase();
  print("name = " + l + "\nnumber = " + list[l].toString());
  print("=====================================================");
}
