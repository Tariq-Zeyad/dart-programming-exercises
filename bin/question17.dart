import 'dart:io';

const int totalMarks = 5;
const int maxAttempts = 3;
const double minMark = 0;
const double maxMark = 100;

double? readMark(int number) {
  int attempts = 0;

  while (attempts < maxAttempts) {
    print('Enter mark $number ($minMark-$maxMark):');

    double? mark = double.tryParse(stdin.readLineSync() ?? '');

    if (mark != null && mark >= minMark && mark <= maxMark) {
      return mark;
    }

    attempts++;
    print('Invalid mark!');

    if (attempts < maxAttempts) {
      print('Attempts remaining: ${maxAttempts - attempts}');
    }
  }

  return null;
}

double calculateAverage(double sum) {
  return sum / totalMarks;
}

void main() {
  double sum = 0;

  for (int i = 1; i <= totalMarks; i++) {
    double? mark = readMark(i);

    if (mark == null) {
      print('Too many invalid attempts. Program terminated.');
      return;
    }

    sum += mark;
  }

  print('Student average: ${calculateAverage(sum)}');
}
