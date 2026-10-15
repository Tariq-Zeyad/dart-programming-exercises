import 'dart:io';

void main() {
  print("Enter temperature in Fahrenheit:");
  double fahrenheit = double.parse(stdin.readLineSync()!);

  double celsius = 5 * (fahrenheit - 32) / 9;

  print("Temperature in Celsius = $celsius");
}
