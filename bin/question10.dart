import 'dart:io';

void main() {
  print('Enter the value in inches:');
  double inches = double.parse(stdin.readLineSync()!);

  double meters = inches * 0.0254;

  print('$inches inches = $meters meters');
}
