import 'dart:io';
import 'dart:async';
import 'dart:convert';



void main() async {
  
  var bookFile =File('Data_folder/books.json');
 // print( bookFile.readAsLinesSync().last);
  var convertedValue;
  late int bookPrice;
  int totalBookPrice=0;
await  bookFile.readAsString().then((value)  {
    print(value.runtimeType); // String

     convertedValue= jsonDecode(value);


  } );

  print(convertedValue); // [{title: Introduction to Research, author: Ragib Hasan, price: 300}, {title: Motivation, author: Yasmin Mojahed, price: 6000},
  print(convertedValue.runtimeType); //List<dynamic>
  for (var mapV in convertedValue){
    print(mapV.runtimeType); // _Map<String, dynamic>

    print(mapV['price'].runtimeType); // int
     bookPrice=mapV['price'];
    totalBookPrice+=bookPrice;


  }

  print(bookPrice);
  stdout.write('Total Book Price: ');
  print(totalBookPrice);
}// end of void main