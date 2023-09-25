import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'person.dart';

void main() {
  final fileName = 'Data_folder/person_jannatul.json';
  var personFile = File(fileName);
  personFile.readAsString();


  personFile.readAsString().then((String contents) {
   // print(contents);
   // print(contents.runtimeType);
    var listFromJson = jsonDecode(contents);
    //print(listFromJson);
    //print(listFromJson.runtimeType);
   // print(listFromJson.length);
    //
    List<Person> myPerson=[];
    for ( var elementIsMap in listFromJson ){
      //print(elementIsMap);
     // print(elementIsMap.runtimeType);
     // print('object');
      var v= Person.factoryConstructorPersonFromJson(elementIsMap);
      myPerson.add(v);




    }
    print('SHOWING INFORMATION AVAILABLE FOR EACH PERSON');
    for(Person individual in myPerson){
      individual.show();

    }

  });
}
