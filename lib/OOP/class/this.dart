void main(List<String> args) {
  var p1 = Point();
  // p1.show();
  // p1.reset();
  // p1.move(10, 45);
  p1.move(20, 32).show().reset();
}

class Point {
  int x = 0;
  int y = 0;

  move(int x, int y) {
    this.x = x;
    this.y = y;
    return this;
  }

  reset() {
    this.x = 0;
    this.y = 0;
    return this;
  }

  show() {
    print('Point($x,$y) ');
    return this;
  }
}
