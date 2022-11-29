import 'dart:io';

void main(List<String> args) {
  print("Convert Feet to Meter : 1 , Convert Meter to Feet : 2");
  int? n = int.parse(stdin.readLineSync()!);
  switch (n) {
    case 1:
      {
        print("Enter Feet = ");
        int? f = int.parse(stdin.readLineSync()!);
        double m = (f / 3.28084);
        print("Meter : $m");
      }
      break;
    case 2:
      {
        print("Enter Meter = ");
        int? m = int.parse(stdin.readLineSync()!);
        double f = m * 3.20884;
        print("Feet : $f");
      }
      break;
    default:
      {
        print("Enter Valid Number");
      }
  }
}
