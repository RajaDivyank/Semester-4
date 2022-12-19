//Write a dart code to get the current date from the system and format into different date
// formats. Ex. dd/MM/yyyy, dd-MM-yyyy, dd-MMM-yyyy, dd-MM-yy, dd MMM yyyy, etc.
import 'dart:io';
import 'package:dart_lab_6/dart_lab_6.dart' as dart_lab_6;
import 'package:intl/intl.dart';

void main(List<String> arguments) {
  final dt = DateTime.now();
  print("Current Date is : ${DateTime.now()}");
  print("Enter Which Formate Date You Want ");
  print(
      " 1 for dd/MM/yyyy \n 2 for dd-MM-yyyy \n 3 for dd-MMM-yyyy \n 4 for dd-MM-yy \n 5 for dd MM yyyy");
  int? n = int.parse(stdin.readLineSync()!);
  switch (n) {
    case 1:
      var newFormat = DateFormat(DateFormat.ABBR_MONTH);
      String updatedDt = newFormat.format(dt);
      print(updatedDt);
      break;
  }
}
