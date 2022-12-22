import 'dart:io';

class candidateDemo {
  int? Candidate_ID;
  String? Candidate_Name;
  int? Candidate_Age;
  double? Candidate_Weight;
  double? Candidate_Height;

  List<Map<String, dynamic>> list = [];
  void insertCandidateDetail() {
    list.add(getCandidateDetails());
  }

  Map<String, dynamic> getCandidateDetails() {
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
    return map;
  }

  void displayCandidateDetails() {
    for (int i = 0; i < list.length; i++) {
      Map<String, dynamic> map = list[i];
      print("Candidate ID : ${map['id']}");
      print("Candidate Name : ${map['Name']}");
      print("Candidate Age : ${map['Age']}");
      print("Candidate Weight : ${map['Weight']}");
      print("Candidate Height : ${map['Height']}");
    }
  }

  void searchCandidateDetail(Candidate_Name, {Function? callback}) {
    for (int i = 0; i < list.length; i++) {
      if (list[i]['Candidate_Name'].toString().toLowerCase() ==
          'Candidate_Name'.toString().toLowerCase()) {
        print("Candidate ID : ${list[i]['id']}");
        print("Candidate Name : ${list[i]['Name']}");
        print("Candidate Age : ${list[i]['Age']}");
        print("Candidate Weight : ${list[i]['Weight']}");
        print("Candidate Height : ${list[i]['Height']}");
        callback!(i);
      }
    }
  }

  void deleteCandidateDetail({Function? callback}) {
    for (int i = 0; i < list.length; i++) {
      print("Enter Witch candidate you have to delete : ");
      String str = stdin.readLineSync()!;
      if (list[i]['Candidate_Name'].toString().toLowerCase() ==
          str.toString().toLowerCase()) {
        list.removeAt(i);
        callback!(i);
      }
    }
  }

  void editCandidateDetail(map, {Function? callback}) {
    for (int i = 0; i < list.length; i++) {
      print("Enter Witch candidate you have to Edit : ");
      String str = stdin.readLineSync()!;
      if (list[i]['Candidate_Name'].toString().toLowerCase() ==
          str.toString().toLowerCase()) {
        list[i] = map;
        callback!(i);
        return;
      }
    }
  }
}
