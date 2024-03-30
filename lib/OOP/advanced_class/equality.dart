void main(List<String> args) {
  var output = Point(x: 10, y: 20);
  var output2 = Point(x: 10, y: 20);
  var result = output == output2;
  print(result);
  print('p1: ${output.hashCode}, p2: ${output2.hashCode}');
}

class Point {
  int x;
  int y;

  Point({required this.x, required this.y});

  @override
  operator ==(o) => o is Point && o.x == x && o.y == y;

  @override
  int get hashCode => x.hashCode ^ y.hashCode;
}
