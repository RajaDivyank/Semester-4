import 'dart:io';

import 'candidateDemo.dart';

void main(List<String> args) {
  int ch = 1;
  candidateDemo candidate = candidateDemo();
  while (ch == 1) {
    candidate.GetCandidateDetails();
    print("==================================================");
    candidate.DisplayCandidateDetails();
    print("==================================================");
    print("Enter Other Candidate Detail : ");
  }
}
