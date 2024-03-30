// void main(List<String> args) {
//   var person = Person();
//   person.name = "John";
//   print(person.name);
// }

// class Person {
//   late String _name;

//   String get name => _name;
//   set name(String value) {
//     _name = value;
//   }
// }
// void main(List<String> args) {
//   var cels = Celsius();
//   cels.celsius = -2320;
//   print(cels.celsius);
// }

// class Celsius {
//   late double _celsius;

//   double get celsius => _celsius;
//   set celsius(double value) {
//     if (value < -273.15) {
//       throw ArgumentError("Temperature cannot be less than 273.15");
//     }
//     _celsius = value;
//   }
// }

// void main(List<String> args) {
//   var cout = Counter();
//   cout.count = 4;
//   print(cout.count);
//   cout.count = -2;
//   print(cout.count);
// }

// class Counter {
//   int _count = 0;
//   int get count => _count;
//   set count(int value) {
//     if (value < 0) {
//       print("count cannot be negative");
//     }
//     _count = value;
//   }
// }

// void main(List<String> args) {
//   var p1 = Name();
//   p1.name = "John";
//   print(p1.name);
// }

// class Name {
//   late String _name;
//   String get name => _name;
// }

void main(List<String> args) {
  var person = Person();
  person.firstName = "John";
  person.lastName = "Doe";
  print(person.fullName);
}

class Person {
  late String _firstName;
  late String _lastName;
  late String _fullName;
  String get fullName => '$_firstName $_lastName';
  String get firstName => _firstName;
  String get lastName => _lastName;

  set firstName(String value) {
    _firstName = value;
  }

  set lastName(String value) {
    _lastName = value;
  }
}
