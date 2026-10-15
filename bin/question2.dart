import 'dart:io';

double calculate(double num1, double num2, String operation) {
  switch (operation) {
    case '+':
      return num1 + num2;
    case '*':
      return num1 * num2;
    case '-':
      return num1 - num2;
    case '/':
      return num1 / num2;
    case '%':
      return num1 % num2;
    default:
      print("Invalid operation");
      return 0;
  }
}

void main() {
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Choose an operation:");
  print("+ : Addition");
  print("- : Subtraction");
  print("* : Multiplication");
  print("/ : Division");
  print("% : Remainder");
  print("Enter your choice:");
  String operation = stdin.readLineSync()!;

  if ((operation == '/' || operation == '%') && num2 == 0) {
    print("Cannot divide by zero");
  } else {
    double result = calculate(num1, num2, operation);
    print("Result = $result");
  }
}
