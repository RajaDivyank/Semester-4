import 'dart:io';
import 'candidateDemo.dart';

void main(List<String> args) {
  // int ch = 1;
  candidateDemo candidate = candidateDemo();
  print("How many candidate detail you have to enter : ");
  int? n = int.parse(stdin.readLineSync()!);
  for (int j = 1; j <= n; j++) {
    candidate.insertCandidateDetail();
    print("==================================================");
    candidate.displayCandidateDetails();
    print("==================================================");
    // print("Enter Other Candidate Detail : ");
  }
  // while (ch == 1) {
  //   candidate.getCandidateDetails();
  //   print("==================================================");
  //   candidate.displayCandidateDetails();
  //   print("==================================================");
  //   print("Enter Other Candidate Detail : ");
  // }
  print("Enter Witch candidate Detail you search : ");
  String Candidate_Name = stdin.readLineSync()!;
  candidate.searchCandidateDetail(Candidate_Name, callback: (i) {
    print('DATA FOUND AT INDEX : $i');
  });
  // candidate.deleteCandidateDetail(callback: (i) {
  //   print('DATA Deleted at index : $i');
  //   candidate.displayCandidateDetails();
  // });
  // candidate.editCandidateDetail(candidate.getCandidateDetails(), callback: (i) {
  //   print('DATA Edited at index : $i');
  //   candidate.displayCandidateDetails();
  // });
}
