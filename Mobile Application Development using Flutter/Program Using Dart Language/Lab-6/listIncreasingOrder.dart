//Write a dart code that prompts the user to enter 5 numbers, stores them in a List, and displays them in increasing order.
import 'dart:io';

void main(List<String> args) {
  List<dynamic> list = [];
  print("Enter List Number : ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    print("Enter Number : ");
    int a = int.parse(stdin.readLineSync()!);
    list.add(a);
  }
  list.sort();
  print("List in increasing Order : $list");
}
