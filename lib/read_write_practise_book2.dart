import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'book.dart';

void main() async {
  var bookFile =File('Data_folder/books.json');
  var convertedValue;
  var mapData;
  List<num > listOfPrice=[];
  await  bookFile.readAsString().then((value)  {
    print(value.runtimeType); // String
    convertedValue= jsonDecode(value);
  } );

  print(convertedValue); // [{title: Introduction to Research, author: Ragib Hasan, price: 300}, {title: Motivation, author: Yasmin Mojahed, price: 6000},
  print(convertedValue.runtimeType); //List<dynamic>
  for (var mapV in convertedValue){
    mapData=bookPriceClass.factoryBookPriceClass(mapV);
    listOfPrice.add(mapV['price']);
  }

  print(listOfPrice);
  var temporaryVar= bookPriceClass(title: 'title', author: 'author', price: 0);
  temporaryVar.totalBookPrice(listOfPrice);

}// end of void main