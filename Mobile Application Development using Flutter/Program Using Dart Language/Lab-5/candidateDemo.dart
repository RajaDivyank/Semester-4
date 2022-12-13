import 'dart:io';

class candidateDemo {
  int? Candidate_ID;
  String? Candidate_Name;
  int? Candidate_Age;
  double? Candidate_Weight;
  double? Candidate_Height;

  List<Map<String, dynamic>> list = [];

  void GetCandidateDetails({id, Name, Age, Weight, Height}) {
    Map<String, dynamic> map = {};
    print("Enter Candidate ID : ");
    map['id'] = stdin.readLineSync();
    print("Enter Candidate Name : ");
    map['Name'] = stdin.readLineSync();
    print("Enter Candidate Age : ");
    map['Age'] = stdin.readLineSync();
    print("Enter Candidate Weight : ");
    map['Weight'] = stdin.readLineSync();
    print("Enter Candidate Height : ");
    map['Height'] = stdin.readLineSync();
    list.add(map);
  }

  void DisplayCandidateDetails() {
    for (int i = 0; i < list.length; i++) {
      Map<String, dynamic> map = list[i];
      print("Candidate ID : ${map['id']}");
      print("Candidate Name : ${map['Name']}");
      print("Candidate Age : ${map['Age']}");
      print("Candidate Weight : ${map['Weight']}");
      print("Candidate Height : ${map['Height']}");
    }
  }

  void search() {
    for (int i = 0; i < list.length; i++) {}
  }
}
