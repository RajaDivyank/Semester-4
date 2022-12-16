//Write a dart code that creates a List with the following values: “Delhi”, “Mumbai”, “Bangalore”,
// “Hyderabad” and “Ahmedabad”. Replace “Ahmedabad” with “Surat” in the above List.
import 'dart:io';

void main(List<String> args) {
  List<dynamic> list = [];
  print("Enter how many worlds you enter = ");
  int? n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    print("Enter World : ");
    String? s = stdin.readLineSync();
    list.add(s);
  }
  print(list);
  print("Which World would you replace : ");
  String? temp1 = stdin.readLineSync();
  print("Enter the Replaced world : ");
  String? temp2 = stdin.readLineSync();
  try {
    int i = list.indexOf(temp1);
    list.remove(temp1);
    list.insert(i, temp2);
    print(list);
  } catch (e) {
    print("Invalid World");
  }
}
