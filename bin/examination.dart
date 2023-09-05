
class Person {
  String _firstName = '';
  String _lastName = '';
  person(String first_name, String last_name) {
    _firstName = first_name;
    _lastName = last_name;
  }

  String get firstName => _firstName;
  String get lastName => _lastName;
  set firstName(String fName) => this._firstName = fName;
  set lastName(String lName) => this._lastName = lName;

  String show() {
    return 'Name: ${this._firstName} ${this._lastName}';
  }
}

class Student extends Person {
  double cgpa = 0.0;
  @override
  String show() {
    var k = super.show() + ", CGPA: $cgpa ";
    print(k);
    return k;
  }
}

class Teacher extends Person {
  int numberOfPublication = 0;
  @override
  String show() {
    var j = super.show() + " , Publication: $numberOfPublication ";
    print(j);
    return j;
  }
}

void main() {
  int indexOfProfession = 0;
  int indexOfFirstName = 1;
  int indexOfLastName = 2;
  int indexOfAchievement = 3;
  List a = [];

  a.add({'Teacher', 'Babul', 'Mridha', 5});
  a.add({'Teacher', 'Isteak', 'Ahmed', 10});
  a.add({'Student', 'Sapon', 'Ahmed', 3.14});
  a.add({'Teacher', 'Amran', 'Hasan', 7});
  a.add({'Student', 'Jannat', 'Akter', 4.19});
  for (Set v in a) {
    if (v.elementAt(indexOfProfession) == 'Student') {
      var x = Student();
      x.lastName = v.elementAt(indexOfLastName);
      x.firstName = v.elementAt(indexOfFirstName);
      x.cgpa = v.elementAt(indexOfAchievement);
      x.show();
    } else if (v.elementAt(indexOfProfession) == 'Teacher') {
      var y = Teacher();
      y.firstName = v.elementAt(indexOfFirstName);
      y.lastName = v.elementAt(indexOfLastName);
      y.numberOfPublication = v.elementAt(indexOfAchievement);
      y.show();
    }
  }
}
