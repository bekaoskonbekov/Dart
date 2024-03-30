void main(List<String> args) {
  var args = add;
  var result = args(10, 20);
  print(result);
  print("Is even a number");
  show(isEvenNumber);
  print("Is odd a number");
  show(isOddNumber);

  var fn = function('+');
  print(fn(10, 20));

  var fn1 = function('-');
  print(fn1(10, 20));

  show2((int x) {
    return x % 2 == 0;
  });
}

int add(int x, int y) {
  return x + y;
}

bool isOddNumber(int x) {
  return x % 2 == 0;
}

bool isEvenNumber(int x) {
  return x % 2 != 0;
}

void show(Function function) {
  for (var i = 0; i < 10; i++) {
    if (function(i)) {
      print(i);
    }
  }
}

add1(int x, int y) {
  return x + y;
}

substract(int x, int y) {
  return x - y;
}

void error(String error) {
  throw error;
}

function(String operator) {
  switch (operator) {
    case "+":
      return add1;
    case "-":
      return substract;
    default:
      return error("Invalid operator");
  }
}

show2(fn) {
  for (var i = 0; i < 10; i++) {
    if (fn(i)) {
      print(i);
    }
  }
}
