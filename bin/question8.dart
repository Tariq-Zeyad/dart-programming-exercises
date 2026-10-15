import 'dart:io';

void main() {
  print("Enter the amount in shekels:");
  double shekels = double.parse(stdin.readLineSync()!);

  double dollars = shekels / 3.16;

  print("Amount in dollars = $dollars");
}
