import 'dart:io';

void main() {
  print('Enter an integer between 0 and 1000:');
  int number = int.parse(stdin.readLineSync()!);

  int sum = 0;

  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }

  print('The sum of the digits is: $sum');
}
