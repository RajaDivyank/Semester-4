//Write a dart code to read 2 lists and return a list that contains only the elements that are common between them.
import 'dart:io';

void main(List<String> args) {
  List<dynamic> list1 = [];
  List<dynamic> list2 = [];
  print("Enter Number of Element First List : ");
  int? n1 = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n1; i++) {
    print("Enter Element in First List : ");
    int? temp = int.parse(stdin.readLineSync()!);
    list1.add(temp);
  }
  print("Enter Number of Element Second List :");
  int? n2 = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n2; i++) {
    print("Enter Element in Second List : ");
    int? temp = int.parse(stdin.readLineSync()!);
    list2.add(temp);
  }
  List<dynamic> list3 = [];
  for (var n in list1) {
    if (list2.contains(n)) {
      list3.add(n);
    }
  }
  print("Common in both list is : $list3");
}
