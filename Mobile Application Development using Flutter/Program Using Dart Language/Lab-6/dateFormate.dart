import 'dart:io';
import 'package:intl/intl.dart';

class DateFormate {
  var dt = DateTime.now();
  void date_dd_MM_yyyy() {
    var newFormat = DateFormate("dd/MM/yyyy");
    String updatedDt = newFormat.Formate(dt);
    print(updatedDt); // 20-04-03
  }
}

void main(List<String> args) {
  print("Current Date is : ${DateTime.now()}");
  print("Enter Which Formate Date You Want ");
  print(
      " 1 for dd/MM/yyyy \n 2 for dd/MM/yyyy \n 3 for dd-MMM-yyyy \n 4 for dd-MM-yy \n 5 for dd MM yyyy");
  int? n = int.parse(stdin.readLineSync()!);
  switch (n) {
    case 1:
  }
}
