import 'dart:io';

void main() {
  int count = 0;
  int attempts = 0;
  double sum = 0;

  while (count < 10) {
    print('Enter a positive number:');
    double number = double.parse(stdin.readLineSync()!);

    attempts++;

    if (number > 0) {
      sum += number;
      count++;
    } else if (number < 0) {
      print('The number is negative. Try again.');
    } else {
      print('The number is zero. Try again.');
    }
  }

  int repetitions = attempts - 10;

  print('Sum of positive numbers: $sum');
  print('Total attempts: $attempts');
  print('Invalid attempts: $repetitions');
}
