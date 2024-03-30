import 'dart:math';

void main(List<String> args) {
  var result = Circle(10);
  result.radius = 100;
  print('The area is ${result.area}');
}

class Circle {
  double _radius = 0;
  Circle(double radius) {
    this.radius = radius;
  }
  set radius(double vakue) {
    print('Setter was called');
    if (vakue >= 0) {
      _radius = vakue;
      print("Radius set to $_radius");
    }
  }

  double get radius => _radius;
  get area => radius * radius * 3.14;
}
