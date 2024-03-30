// import 'dart:math';

// void main(List<String> args) {
//   var circle = Circle(radius: 10);
//   print(circle.area());
//   var square = Square(length: 10);
//   print(square.area());
// }

// abstract class Shape {
//   area();
// }

// class Circle extends Shape {
//   double radius;
//   Circle({this.radius = 0});
//   @override
//   area() {
//     return pi * radius * radius;
//   }
// }

// class Square extends Shape {
//   double length;
//   Square({this.length = 0});
//   @override
//   area() {
//     return length * length;
//   }
// }
void main(List<String> args) {
  var shape = Rectangle(-10, 5);
  print(shape.area());
}

abstract class Shape {
  double _width;
  double _height;
  Shape(this._width, this._height);
  double get width => _width;
  double get height => _height;
  set width(double area) {
    if (_width > 0) {
      _width = width;
    }
  }

  set height(double width) {
    if (width > 0) {
      _height = height;
    }
  }

  double area();
}

class Rectangle extends Shape {
  Rectangle(double width, double height) : super(width, height);
  @override
  double area() {
    return width * height;
  }
}
