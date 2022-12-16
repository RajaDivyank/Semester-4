//Body Mass Index (BMI) is a measure of health on weight. It can be calculated by taking your
// weight in kilograms and dividing by the square of your height in meters. Write a dart code that
// prompts the user to enter a weight in pounds and height in inches and display the BMI.
// Note: 1 pound = .45359237 kg and 1 inch = 0.254 meters

import 'dart:io';

void main(List<String> args) {
  print("Enter weight in pound : ");
  int? p = int.parse(stdin.readLineSync()!);
  print("Enter Height in Inch : ");
  int? n = int.parse(stdin.readLineSync()!);
  double kg = (p * 0.45359237);
  double m = (n * 0.254);
  double ans = 10 * (kg / m);
  print("BMI of healthy person is : $ans");
}
