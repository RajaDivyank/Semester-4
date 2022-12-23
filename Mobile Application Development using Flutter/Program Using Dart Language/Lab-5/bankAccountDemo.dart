import 'dart:io';

class Bank_Account {
  int? Account_No;
  String? User_Name;
  String? Email;
  String? Account_Type;
  double? Account_Balance;

  List<Map<dynamic, dynamic>> list = [];

  void insertAccountDetail() {
    list.add(getAccountDetail());
  }

  Map<dynamic, dynamic> getAccountDetail() {
    Map<dynamic, dynamic> _map = {};
    print("Enter Account Number : ");
    _map['Account_No'] = stdin.readLineSync();
    print("Enter User Name : ");
    _map['User_Name'] = stdin.readLineSync();
    print("Enter User Email : ");
    _map['Email'] = stdin.readLineSync();
    print("Enter Account Type : ");
    _map['Account_Type'] = stdin.readLineSync();
    print("Enter Account Balance : ");
    _map['Account_Balance'] = stdin.readLineSync();
    return _map;
  }

  void displayAccountDetail() {
    for (int i = 0; i < list.length; i++) {
      Map<dynamic, dynamic> _map = list[i];
      print("Account Number = ${_map['Account_No']}");
      print("User Name = ${_map['User_Name']}");
      print("User Email = ${_map['Email']}");
      print("Account Type = ${_map['Account_Type']}");
      print("Account Balance = ${_map['Account_Balance']}");
    }
  }
}
