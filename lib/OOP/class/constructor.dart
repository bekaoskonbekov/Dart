void main(List<String> args) {
  var res = Point.origin();
  print(res);
}

class Point {
  int x = 0;
  int y = 0;
  // Point(int x, int y) {
  //   this.x = x;
  //   this.y = y;
  // }

  Point(this.x, this.y);

  Point.origin() : this(10, 20);

//   Point() {
//     print("This is a Point");
//   }
}
