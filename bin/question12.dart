import 'dart:io';

void main() {
  print('Enter the number of minutes:');
  int minutes = int.parse(stdin.readLineSync()!);

  int years = minutes ~/ (60 * 24 * 365);
  int remainingMinutes = minutes % (60 * 24 * 365);
  int days = remainingMinutes ~/ (60 * 24);

  print('$minutes minutes is approximately $years years and $days days');
}
