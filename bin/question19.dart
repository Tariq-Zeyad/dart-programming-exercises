import 'dart:io';

const String storedUsername = 'admin';
const String storedPassword = '1234';

const int maxLoginAttempts = 3;
const int depositOption = 1;
const int withdrawOption = 2;
const int balanceOption = 3;
const int logoutOption = 4;

double balance = 0;

String? readText(String message) {
  print(message);
  return stdin.readLineSync();
}

double? readAmount() {
  String? input = readText('Enter amount:');
  double? amount = double.tryParse(input ?? '');

  if (amount == null || amount <= 0) {
    print('Invalid amount! Enter a positive number.');
    return null;
  }

  return amount;
}

int? readMenuOption() {
  String? input = readText(
    '\n1. Deposit\n'
    '2. Withdraw\n'
    '3. Check Balance\n'
    '4. Logout\n'
    'Choose an option:',
  );

  return int.tryParse(input ?? '');
}

bool login(String username, String password) {
  return username == storedUsername && password == storedPassword;
}

double deposit(double amount, {double currentBalance = 0}) {
  double updatedBalance = currentBalance + amount;
  print('Deposit successful!');
  print('Updated balance: $updatedBalance');
  return updatedBalance;
}

double withdraw(double amount, double currentBalance) {
  if (amount > currentBalance) {
    print('Insufficient balance.');
    return currentBalance;
  }

  double updatedBalance = currentBalance - amount;
  print('Withdrawal successful!');
  print('Updated balance: $updatedBalance');
  return updatedBalance;
}

void checkBalance(double currentBalance) {
  print('Current balance: $currentBalance');
}

double handleDeposit(double currentBalance) {
  double? amount = readAmount();

  if (amount == null) {
    return currentBalance;
  }

  return deposit(amount, currentBalance: currentBalance);
}

double handleWithdrawal(double currentBalance) {
  double? amount = readAmount();

  if (amount == null) {
    return currentBalance;
  }

  return withdraw(amount, currentBalance);
}

bool performLogin() {
  int attempts = 0;

  do {
    String? username = readText('Enter username:');
    String? password = readText('Enter password:');

    attempts++;

    if (login(username ?? '', password ?? '')) {
      print('Login successful!');
      return true;
    }

    print('Incorrect username or password.');

    if (attempts < maxLoginAttempts) {
      print('Attempts remaining: ${maxLoginAttempts - attempts}');
    }
  } while (attempts < maxLoginAttempts);

  print('Login failed. Program terminated.');
  return false;
}

void runBankingMenu() {
  int? option;

  while (option != logoutOption) {
    option = readMenuOption();

    switch (option) {
      case depositOption:
        balance = handleDeposit(balance);
        break;

      case withdrawOption:
        balance = handleWithdrawal(balance);
        break;

      case balanceOption:
        checkBalance(balance);
        break;

      case logoutOption:
        print('Logged out successfully.');
        break;

      default:
        print('Invalid option! Please choose from 1 to 4.');
    }
  }
}

void main() {
  bool isLoggedIn = performLogin();

  if (!isLoggedIn) {
    return;
  }

  runBankingMenu();
}
