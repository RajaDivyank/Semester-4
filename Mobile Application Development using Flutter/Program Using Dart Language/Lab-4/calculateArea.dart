import 'dart:io';

void main(List<String> args) {
  print("Enter Which Area you Required");
  String area = stdin.readLineSync()!;
  switch (area) {
    case 'circle':
      circle(5);
      break;
    case 'triangle':
      triangle(2);
      break;
    case 'square':
      square(5);
      break;
    default:
      print("Enter Valid String");
  }
}

void circle(int r) {
  print("Enter Radius of circle : ");
  int r = int.parse(stdin.readLineSync()!);
  print("Area of Circle : ${3.14 * r * r}");
}

void triangle(int h, [int b = 1]) {
  print("Area of Triangle : ${0.5 * h * b}");
}

void square(int l) {
  print("Area of Square : ${l * l}");
}
