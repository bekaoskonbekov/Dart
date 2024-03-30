void main(List<String> args) {
  List<String> colors = ["Yellow", "red", "black"];
  colors[2] = "red";
  print(colors);
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  numbers.setAll(1, [8, 9]);
  print(numbers);

  List<String> days = ["Monday", 'Sunday'];
  for (var i = 0; i < days.length; i++) {
    days[i] = days[i].toUpperCase();
    print(days);
  }
  for (var element in days) {
    print(element);
  }
}
