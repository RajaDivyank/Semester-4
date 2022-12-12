import 'dart:io';

void main(List<String> args) {
  print("Enter Principle : ");
  int? p = int.parse(stdin.readLineSync()!);
  print("Enter Time : ");
  int? t = int.parse(stdin.readLineSync()!);
  print("Enter Interest Rate : ");
  int? r = int.parse(stdin.readLineSync()!);
  print("Simple Interest = ${p * r * t}");
  simpleInterestUsingPositional(5000);
  simpleInterestUsingNamed(p: 500, t: 1, r: 1);
}

//Program Using Positional Parameter
void simpleInterestUsingPositional(int p, [int t = 1, int r = 1]) {
  print("Simple Interest Using Positional Parameter = ${p * r * t}");
}

//program Using Named Parameter
void simpleInterestUsingNamed(
    {required int p, required int t, required int r}) {
  print("Simple Interest Using Named Parameter = ${p * r * t}");
}
