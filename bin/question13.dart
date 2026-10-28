import 'dart:io';

void main() {
  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter the operation (+, -, *, /, %):');
  String operation = stdin.readLineSync()!;

  switch (operation) {
    case '+':
      print('Result: ${num1 + num2}');
      break;

    case '-':
      print('Result: ${num1 - num2}');
      break;

    case '*':
      print('Result: ${num1 * num2}');
      break;

    case '/':
      if (num2 != 0) {
        print('Result: ${num1 / num2}');
      } else {
        print('Cannot divide by zero.');
      }
      break;

    case '%':
      if (num2 != 0) {
        print('Result: ${num1 % num2}');
      } else {
        print('Cannot calculate remainder with zero.');
      }
      break;

    default:
      print('Invalid operation!');
  }
}
