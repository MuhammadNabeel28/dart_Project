import 'dart:io';

var itemList = ['Apple', 'Jam', 'Banana', 'Mango'];
void main() {
  findByItemId('Jam');
}

void findByItemId(var Item) {
  print('====Find Item By Id Input Item Id=====');

  //var itemId = stdin.readLineSync()!;
  var item_ = itemList.where((r) => r.contains(Item) == true);
  //String result = item_ == null ? '$item_' : 'Item Not Found';
  if (item_ == '')
    print('Find Item : $item_');
  else
    print('Item Not Found :');

  // print(' ');
  // print('Find Item : $result');
}
