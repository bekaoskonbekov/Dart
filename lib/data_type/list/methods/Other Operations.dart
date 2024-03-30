void main(List<String> args) {
  List<String> name = ["Alice", "Bob", "Peter"];
  List<String> name2 = name.reversed.toList();
  name2.add("Belek");
  print(name2);

  var number = [1, 2, 3, 4, 5];
  var num2 = number.sublist(1, 3);
  print(num2);

  List<int> age = [12, 34, 5, 66];
  age.sort();
  print(age);

  age.sort((a, b) => b - a);
  print(age);

  List<String> countries = ["Kg", "USA", "Ru"];
  countries.shuffle();
  print(countries);

  List<String> words = ["hello", "world", "how", "are", "you"];
  String greeting = words.join(); // Join with space separator

  print(greeting);
}
