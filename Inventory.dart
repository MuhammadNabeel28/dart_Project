import 'dart:io';

String user_Id = '';
bool success = false;

List itemList = [];

void main() {
  bool condation = true;

  print("============ Welcome To Smart Inventory ===========");
  print(' ');

  while (condation) {
    if (!success) {
      print('Login First Press : A');
    } else {
      print(' ');
      print('Add New Item : B');
      print('Edit Item : C');
      print('Delete Item : D');
      print('View All Item : V');
      print('Find Item By Name : F');
      print('Purchase Item : E');
      print('Sale Item : S');
      print('Exit System : Z');
    }

    String? input_Key = stdin.readLineSync()!;

    switch (input_Key) {
      case 'A':
        login();
        break;

      case 'B':
        additem();
        break;

      case 'V':
        viewAllItem();
        break;

      case 'C':
        editItem();
        break;

      case 'D':
        itemDelete();
        break;

      case 'Z':
        condation = false;
        print('====Program Ended=====');
        print('');
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

  print('====Enter UserId====');
  UserId_ = stdin.readLineSync()!.trim();

  print('====Enter Password====');
  Password_ = stdin.readLineSync()!.trim();

  bool isCondation = false;
  for (var credentials in userCredentials) {
    if (UserId_ == credentials['email'] &&
        Password_ == credentials['password']) {
      isCondation = true;
      break;
    }
    if (UserId_ == 'nabeel_master789@gmail.com')
      user_Id == 'master';
    else
      user_Id == 'user';

    print('UserId Name : $user_Id');
  }

  if (UserId_ == 'nabeel_master789@gmail.com')
    user_Id = 'master';
  else
    user_Id = 'user';

  if (isCondation) {
    if (user_Id == 'master') {
      success = true;
      print("Login with master account Id Successfully!");
    } else {
      success = true;
      print("Login with user account Id Successfully!");
    }
  } else {
    print('Invalid credentials. Please try again.\n');
  }
}

void additem() {
  print('========Insert Item Name=======');

  String? itemName = stdin.readLineSync()!;

  itemList.add(itemName);
}

void viewAllItem() {
  print('=====View All Item======');
  print(' ');

  for (var i = 0; i < itemList.length; i++) {
    print('ItemId $i : Item Name : ${itemList[i]}');
  }
}

void itemDelete() {
  print('==== Type Delete Name ====');

  String? Item = stdin.readLineSync()!;
  itemList.remove(Item);

  print('====Item Deleted  Successfully!====');
}

void editItem() {
  print('====Edit Item Update List====');
  print(' ');

  print('====Insert Item Id====');
  print('');
  var ItemId = stdin.readLineSync()!;

  print('====Update Item Name=====');
  print('');
  String? newItem = stdin.readLineSync()!;

  itemList[int.parse(ItemId)] = newItem;

  print('====Update Item Successfully!====');
  print('');
}

void findByItemId() {
  print('====Find Item By Id Input Item Id=====');

  var itemId = stdin.readLineSync()!;
  print('Find Item : ${itemList.contains(itemId)}');
}
