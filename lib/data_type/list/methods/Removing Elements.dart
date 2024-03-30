void main(List<String> args) {
  List<String> colors = [
    'red',
    "green",
    'blue',
    "black",
    "orange",
    "ak",
    "kara"
  ];
  colors.remove("red");
  print(colors);
  colors.removeAt(0);
  print(colors);

  List<int> numbers = [10, 20, 30, 40, 50, 60, 70];
  numbers.removeWhere((numbr) => numbr % 3 == 0);
  print(numbers);
  numbers.clear();
  print(numbers);
}
