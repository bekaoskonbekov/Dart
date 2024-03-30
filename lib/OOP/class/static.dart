void main(List<String> args) {
  var res = Point(x: 2000, y: 2);
  var res1 = Point(x: 2000, y: 2);
  var res2 = Point(x: 2000, y: 2);
  print(Point._counter);
}

class Point {
  int x;
  int y;
  static int _counter = 0;
  Point({this.x = 0, this.y = 0}) {
    _counter++;
  }
}
