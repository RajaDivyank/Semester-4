import 'dart:io';

void main(List<String> args) {
  print("Enter English Subject maths : ");
  int? English = int.parse(stdin.readLineSync()!);
  print("Enter Maths subject marks : ");
  int? Maths = int.parse(stdin.readLineSync()!);
  print("Enter Java marks : ");
  int? Java = int.parse(stdin.readLineSync()!);
  print("Enter Python marks : ");
  int? Python = int.parse(stdin.readLineSync()!);
  print("Enter Drawing marks : ");
  int? Drawing = int.parse(stdin.readLineSync()!);
  double per = (English + Maths + Java + Python + Drawing) / 5;
  print("Percentage : $per%");
  if (per < 35) {
    print("Fail");
  } else if (per >= 35 && per < 45) {
    print("Pass Class");
  } else if (per >= 45 && per < 60) {
    print("Second Class");
  } else if (per >= 60 && per <= 70) {
    print("First class");
  } else {
    print("Distinction");
  }
}
