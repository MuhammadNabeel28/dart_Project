import 'dart:io';

String user_Id = '';

void main() {
  String abc = '';

  print("============ Welcome To Smaart Inventory ===========");

  while (abc == '') {
    stdout.write('Login press to : A');

    String? input_Key = stdin.readLineSync()!;

    switch (input_Key) {
      case 'A':
        login();
        break;
    }
  }
}

void login() {
  List<Map<String, String>> userCredentials = [
    {'email': 'nabeel_master789.gmail.com', 'password': 'master123'},
    {'email': 'asif_user.gmail.com', 'password': 'user123'},
  ];

  String? UserId = stdin.readLineSync()?.trim();
  String? Password = stdin.readLineSync()?.trim();

  for (var item in userCredentials) {
    if (UserId == item['nabeel_master789.gmail.com'] &&
        Password == item['master123']) {
      user_Id == 'Master';

      print("Login with master account Id Successfully!");
    } else if (UserId == item['asif_user.gmail.com'] &&
        Password == item['user123']) {
      user_Id == 'User';
      print("Login with user account Id Successfully!");
    } else {
      print('Invalid credentials. Please try again.\n');
    }
  }
}
