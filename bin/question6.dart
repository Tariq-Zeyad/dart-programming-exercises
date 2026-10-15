import 'dart:io';

void main() {
  print("Enter the length:");
  double length = double.parse(stdin.readLineSync()!);

  print("Enter the width:");
  double width = double.parse(stdin.readLineSync()!);

  double area = length * width;

  print("Area of rectangle = $area");
}
