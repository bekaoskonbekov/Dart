void main(List<String> args) {
  var args = Point(x: 10, y: 10);
  args.show();

  args._x = 100;
  args._y = 200;
  args.show();

  var result = Number(x: 343, y: 100);
  result.show1();
}

class Point {
  int _x = 0;
  int _y = 0;

  Point({int x = 0, int y = 0}) {
    this._x = x;
    this._y = y;
  }

  show() {
    print("Point $_x , $_y");
  }
}

class Number {
  int _x = 0;
  int _y = 0;

  Number({int x = 0, int y = 0})
      : _x = x,
        _y = y;

  show1() {
    print("Number x= $_x, y=$_y");
  }
}
