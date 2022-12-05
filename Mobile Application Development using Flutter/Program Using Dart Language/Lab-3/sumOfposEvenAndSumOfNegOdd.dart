import 'dart:io';

void main(List<String> args) {
  int? temp;
  int sumposeven = 0;
  int sumoddneg = 0;
  while (temp != 0) {
    print("Enter a number : ");
    int? n = int.parse(stdin.readLineSync()!);
    if (n == 0) {
      break;
    } else {
      if (n > 0 && n.isEven) {
        sumposeven = sumposeven + n;
      } else if (n < 0 && n.isOdd) {
        sumoddneg = sumoddneg + n;
      }
    }
  }
  print("Sum OF Even Positive number is $sumposeven");
  print("Sum OF Odd Negative number is $sumoddneg");
}
