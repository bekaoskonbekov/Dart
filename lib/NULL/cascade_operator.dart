// void main(List<String> args) {
//   Person? person = Person();
//   person
//     ..name = "Alice"
//     ..SayHello();
// }

// class Person {
//   String? name;
//   void SayHello() {
//     print("Hello $name!");
//   }
// }

// void main(List<String> args) {
//   Rectangle? record = Rectangle();
//   record
//     ..width = 100
//     ..height = 200;
//   print("Width: ${record.width}, height: ${record.height}");
// }

// class Rectangle {
//   int? width;
//   int? height;
// }
// void main(List<String> args) {
//   Person? person = Person();
//   person.name = "Alice";
//   person.SayHello();
// }

// class Person {
//   String? name;
//   void SayHello() {
//     print("My name is $name!");
//   }
// }

// void main(List<String> args) {
//   Person? person = Person();
//   if (person != null) {
//     person
//       ..name = "Alice"
//       ..SayHello();
//   }
//   person
//     ..name ??= "Alice"
//     ..name = "Bob";
//   print(person.name);
// }

// class Person {
//   String? name;
//   void SayHello() {
//     print("My name is $name!");
//   }
// }
// void main(List<String> args) {
//   Person? person = Person();
//   person
//     ..name = "Alice"
//     ..sayHello();
// }

// class Person {
//   String? name;
//   void sayHello() {
//     if (name != null) {
//       print("My name is $name!");
//     }
//   }
// }

void main(List<String> args) {
  Person? person = Person();
  person..name = "Alice";
  person..adress!.city = "City";
  // ..adress!.city = "Bishkek";
  print("My name is ${person.name}!");
  print("${person.adress?.city}");
}

class Adress {
  String? city;
}

class Person {
  String? name;
  Adress? adress;
}
