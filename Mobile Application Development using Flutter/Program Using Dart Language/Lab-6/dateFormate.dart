import 'dart:io';

void main(List<String> args) {
  final dt = DateTime.now();
  var newFormat = DateFormat("yy-MM-dd");
String updatedDt = newFormat.format(dt);
print(updatedDt);
  print("Current Date is : ${DateTime.now()}");
  print("Enter Which Formate Date You Want ");
  print(
      " 1 for dd/MM/yyyy \n 2 for dd-MM-yyyy \n 3 for dd-MMM-yyyy \n 4 for dd-MM-yy \n 5 for dd MM yyyy");
  int? n = int.parse(stdin.readLineSync()!);
  switch (n) {
    case 1:
      print(dt.day.toString() +
          "/" +
          dt.month.toString() +
          "/" +
          dt.year.toString());
      break;
    case 2:
      print(dt.day.toString() +
          "-" +
          dt.month.toString() +
          "-" +
          dt.year.toString());
      break;
    case 3:
      print(dt.day.toString() +
          "-" +
          dt..toString() +
          "-" +
          dt.year.toString());
      break;
  }
}
