void main(List<String> args) {
  var args = Point();
  args.x = 1;
  args.y = 2;
  print(args.x);
  print(args.y);
  var result = Point()
    ..x = 10
    ..y = 15;
  print({result.x, result.y}.toList());

  var res = Name()
    ..x = 10
    ..y = 15;
  res.move(100, 50);
  print(res);

  var res2 = Greeting()
    ..x = 10
    ..y = 15;
  res2.move(100, 50);
  res2.show();
  print(res2);
}

class Point {
  int x = 0;
  int y = 0;
}

class Name {
  int x = 0;
  int y = 0;
  move(int x1, int y1) {
    x = x1;
    y = y1;
  }
}

class Greeting {
  int x = 0;
  int y = 0;

  move(int x1, int y1) {
    x = x1;
    y = y1;
  }

  show() {
    print("Greeting($x, $y)");
  }
}
