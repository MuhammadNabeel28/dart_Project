import 'dart:async';
import 'dart:io';

String user_Id = '';
bool success = false;

void main() {
  bool condation = true;

  print("============ Welcome To Smaart Inventory ===========");

  while (condation) {
  
  if(!success){
    print('Login First Press : A');
  }else{
    print('Add New Item : B');
    print('Edit Item : C');
    print('Delete Item : D');
    print('Purchase Item : E');
    print('Sale Item : S');
    print('Exit System : Z');

  }
  
    String? input_Key = stdin.readLineSync()!;

    switch (input_Key) {
      case 'A':
        login();
        break;
        case'Z':
        condation = false;
        print('Program Ended');
        break;

    }
  }
}

void login() {
  List<Map<String, String>> userCredentials = [
    {'email': 'nabeel_master789@gmail.com', 'password': 'master123'},
    {'email': 'asif_user@gmail.com', 'password': 'user123'},
  ];

  String? UserId_ = '';
  String? Password_ = '';
  
  print('Enter UserId ');
  UserId_ = stdin.readLineSync()!.trim();

  print('Enter Password ');
  Password_ = stdin.readLineSync()!.trim();
   
  bool isCondation =false;
  for(var credentials in userCredentials){
    if(UserId_ == credentials['email'] && Password_ ==  credentials['password']){
      isCondation = true;
      break;
    }
    if(credentials['email'] == 'nabeel_master789@gmail.com')
       user_Id == 'master';
    else
      user_Id == 'user';
  }

  if(isCondation){
    if(user_Id == 'master'){
      success = true;
      print("Login with master account Id Successfully!");
    }
    else{
      success = true;
      print("Login with user account Id Successfully!");
    }
  }
  else{
    print('Invalid credentials. Please try again.\n');
  }

  
}
