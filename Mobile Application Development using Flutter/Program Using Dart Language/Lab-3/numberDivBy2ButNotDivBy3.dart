import 'dart:io';

void main(List<String> args) {
  print("Enter Start number : ");
  int? s = int.parse(stdin.readLineSync()!);
  print("Enter End number : ");
  int? e = int.parse(stdin.readLineSync()!);
  int i;
  print("Number are : ");
  for (i = s; i < e; i++) {
    if ((i % 2 == 0) && (i % 3 != 0)) {
      // print("Number is : $i");
      stdout.write("$i , ");
    }
  }
}
