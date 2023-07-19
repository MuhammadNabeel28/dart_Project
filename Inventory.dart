// ignore_for_file: unused_local_variable


import 'dart:io';

String user_Id = '';
bool success = false;

List itemList = [];
List<Map<String, dynamic>> purchaseList = [];
List<Map<String, dynamic>> saleList = [];

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
      print('Purchase List : P');
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

      case 'F':
        findByItemId();
        break;

      case 'E':
        purchase();
        break;

      case 'S':
       sale();
       break;

      case 'P':
        viewPurchaselist();
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
  int id_ = int.parse(itemId);
  var item_ = itemList.elementAt(id_);
  if (item_ != 0)
    print('Find Item : $item_');
  else
    print('Item Not Found :');
}

void purchase() {
  print('=====Purchase Item=====');
  print('');
  print('===Purchase Item Name===');
  var item_Name = stdin.readLineSync()!;
  print('');
  print('===Purchase Qty===');
  var qty_ = stdin.readLineSync()!;
  print('');
  print('===Purchase Price===');
  var price = stdin.readLineSync()!;

  num total = num.parse(qty_) * num.parse(price);
  Map<String, dynamic> purchase = {
    "Item": item_Name,
    "Qty": int.parse(qty_),
    "Price": double.parse(price),
    "Amount": total,
  };
  purchaseList.add(purchase);
  print(purchaseList);
}

void viewPurchaselist() {
  print('===Purchase List===');
  print('');
  for (var i = 0; i < purchaseList.length; i++) {
    print("Purchase List: ${purchaseList[i]}");
  }
}

void sale(){
print('===Input Sale Item===');
print('');

var sale_Item = stdin.readLineSync()!;

 bool isavailable = false;
 for(var item in purchaseList){
  if(item.containsValue(sale_Item)){
    print('Item available : ${item.containsValue(sale_Item)}');
    isavailable = true;
    
   }
   else{
    print('$sale_Item : This item not available');
   }

 }

print('===Sale Price===');

 var SalePrince = stdin.readLineSync()!;

for (var i = 0; i < purchaseList.length; i++) {
    for(var item in purchaseList){
   if(item.containsValue(sale_Item)){
    purchaseList.removeAt(i);
   }
 }
}

 print('Lis : $purchaseList');
}