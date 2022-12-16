//Write a dart code to convert temperature from Fahrenheit to Celsius.[°C = [(°F-32)×5]/9, °F = °C * 1.8000]
import 'dart:io';

void main(List<String> args) {
  print("Convert F to C : 1 , convert C to F : 2 ");
  int? n = int.parse(stdin.readLineSync()!);

  switch (n) {
    case 1:
      {
        print("Enter Fahrenheit = ");
        int? f = int.parse(stdin.readLineSync()!);
        double? c = (((f - 32) * 5) / 9);
        print("Celsius : $c");
      }
      break;
    case 2:
      {
        print("Enter Celsius = ");
        int? c = int.parse(stdin.readLineSync()!);
        double? f = c * 1.8000;
        print("Fahrenheit : $f");
      }
      break;
    default:
      {
        print("Invalid Number");
      }
  }
}
