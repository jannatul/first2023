class Person {
  final String classFirstName;
  final String classLastName;
  final String classAddress;

  const Person({required this.classFirstName, required this.classLastName, required this.classAddress});

  factory Person.factoryConstructorPersonFromJson(Map<String, dynamic>  myMap){
    return Person(classFirstName:myMap['firstName'],classLastName:myMap['lastName'],classAddress:myMap['address']);

  }

  void show(){

    print('Name $classFirstName $classLastName,  Address $classAddress');
    //print(classFirstName);
    // print(classLastName);
    // print(classAddress);
  }

}