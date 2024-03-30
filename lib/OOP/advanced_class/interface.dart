// void main(List<String> args) {
//   var gaz = Gaz();
//   gaz.maove();
//   var bike = Bike();
//   bike.maove();
// }

// abstract class Car {
//   maove() {
//     print("Hello");
//   }
// }

// class Gaz extends Car {
//   @override
//   maove() {
//     print("Car is moving");
//   }
// }

// class Bike implements Car {
//   @override
//   maove() {
//     print("Bike is moving");
//   }
// }

// void main(List<String> args) {
//   var circle = Circle(12, 3);
//   print("Area rectangle: ${circle.area}");
// }

// abstract class Shape {
//   double get area;
// }

// class Circle implements Shape {
//   double width;
//   double height;
//   Circle(this.width, this.height);
//   @override
//   double get area => height * width;
// }

// void main(List<String> args) {
//   var bird = Sparrow();
//   bird.eat();
//   bird.fly();
// }

// abstract class Animal {
//   void eat();
// }

// abstract class Bird extends Animal {
//   @override
//   void fly();
// }

// class Sparrow implements Bird {
//   @override
//   void fly() {
//     print("Sparrow is flying");
//   }

//   @override
//   void eat() {
//     print("Sparrow is eating");
//   }
// }

// void main(List<String> args) {
//   var dog = Dog();
//   dog.eat();
//   dog.makeSound();
// }

// abstract class Animal {
//   void eat();
//   void makeSound() {
//     print("Animal is Wow!");
//   }
// }

// class Dog implements Animal {
//   @override
//   void eat() {
//     print("Dog is eating");
//   }

//   @override
//   void makeSound() {
//     print("Dog is Woof!");
//   }
// }

void main(List<String> args) {
  var student = Student();
  print("Student name is ${student.name}");
}

abstract class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void makeName();
}

abstract class Color {
  late String color;
  void makeColor();
}

class Student implements Person, Color {
  @override
  int age = 0;

  @override
  String name = "Belek";

  @override
  void makeName() {
    print("Student name");
  }

  @override
  String color = "";

  @override
  void makeColor() {
    print("Color is null");
  }
}
