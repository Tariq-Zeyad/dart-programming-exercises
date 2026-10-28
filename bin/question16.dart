import 'dart:io';

String storedUsername = 'admin';
String storedPassword = '1234';

String getUsername() {
  print('Enter username:');
  return stdin.readLineSync()!;
}

String getPassword() {
  print('Enter password:');
  return stdin.readLineSync()!;
}

bool checkLogin(String username, String password) {
  return username == storedUsername && password == storedPassword;
}

void main() {
  int attempts = 0;
  bool loggedIn = false;

  do {
    String username = getUsername();
    String password = getPassword();

    attempts++;

    if (checkLogin(username, password)) {
      print('Login successful!');
      loggedIn = true;
    } else {
      print('Incorrect username or password.');

      if (attempts < 3) {
        print('Attempts remaining: ${3 - attempts}');
      }
    }
  } while (attempts < 3 && !loggedIn);

  if (!loggedIn) {
    print('Login failed! You have used all 3 attempts.');
  }
}
