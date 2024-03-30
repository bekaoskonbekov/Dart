// class Verihale {
//   void move() {
//     print("move");
//   }
// }

// class Car extends Verihale {
//   @override
//   void eat() {
//     super.move();
//     print("Car is moving");
//   }
// }

// void main(List<String> args) {
//   var car = Car();
//   car.eat();
// }

// void main(List<String> args) {
//   var rec = Rectangle(12, 13, 5);
//   rec.area();
// }

// class Shape {
//   int width;
//   int height;
//   Shape(this.width, this.height);
// }

// class Rectangle extends Shape {
//   int area;

//   Rectangle(this.area, int width, int height) : super(width, height) {
//     area = super.width * super.height;
//   }
// }
void main(List<String> args) {
  var student = Student("Alice", "XSchool");
  print(student.name);
}

class Person {
  String _name;
  Person(this._name);
  String get name => _name;
}

class Student extends Person {
  String school;
  Student(String name, this.school) : super(name);
  get name => "Student: " + super.name;
}
