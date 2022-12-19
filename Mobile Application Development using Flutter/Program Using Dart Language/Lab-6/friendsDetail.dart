// Write a dart code to find friends’ details by their name using a dictionary. (Create a local
// dictionary and search from it using Map<String, Object?> & Model Class).
import 'dart:io';

class friendsDetail {
  String? Student_Id;
  String? Student_Name;
  String? Student_Number;
  String? Student_Age;
  List<Map<String, dynamic>> list = [];

  void getFriendDetail({id, Name, Number, Age}) {
    Map<String, dynamic> map = {};
    print("Enter Student Id : ");
    map['id'] = stdin.readLineSync()!;
    print("Enter Student Name : ");
    map['Name'] = stdin.readLineSync().toString().toLowerCase()!;
    print("Enter Student Number : ");
    map['Number'] = stdin.readLineSync()!;
    print("Enter Student Age : ");
    map['Age'] = stdin.readLineSync()!;
    list.add(map);
  }

  void DisplayStudentDetails() {
    for (int i = 0; i < list.length; i++) {
      Map<String, dynamic> map = list[i];
      print("Student ID : ${map['id']}");
      print("Student Name : ${map['Name']}");
      print("Student Number : ${map['Number']}");
      print("Student Age : ${map['Age']}");
    }
  }

  void SearchFriendDetail() {
    print("Enter Which Friend's Detail You Search : ");
    String s = stdin.readLineSync()!;
    for (int i = 0; i < list.length; i++) {
      if (list[i]['Name'].toString().toLowerCase() ==
          s.toString().toLowerCase()) {
        print("Student ID : ${list[i]['id']}");
        print("Student Name : ${list[i]['Name']}");
        print("Student Number : ${list[i]['Number']}");
        print("Student Age : ${list[i]['Age']}");
      }
    }
  }
}

void main(List<String> args) {
  friendsDetail f = friendsDetail();
  print("Enter How Many Student Detail You Will Enter : ");
  int? n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    print("Enter [" + i.toString() + "] Student Detail : ");
    f.getFriendDetail();
    print("==================================================");
  }
  f.DisplayStudentDetails();
  print("==================================================");
  f.SearchFriendDetail();
}
