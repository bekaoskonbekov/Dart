void main(List<String> args) {
  List<String> colors = ["Red", "Green", "Blue"];
  bool hasColor = colors.contains('Belek');
  print(hasColor);
  int indexNum = colors.indexOf("Green");
  print(indexNum);
  List<int> numbers = [1, 2, 3, 4, 5];
  int hasNum = numbers.indexOf(4);
  for (var element in numbers) {
    var num1 = element * 2;
    print(num1);
  }
  print(hasNum);

  List<String> names = ["Alice", "Bob", "Peter"];
  names.forEach((element) {
    return print(element.toUpperCase());
  });
  for (var i = 0; i < names.length; i++) {
    names[i] = names[i].toUpperCase();
    print(names);
  }
  for (var element in names) {
    print(element.toUpperCase());
  }

  var upperCaseName = names.map((e) => e.toUpperCase()).toList();
  print(upperCaseName);

  List<num> num2 = [1, 2, 3, 4, 5];
  var evenNumbers = num2.where((element) => element % 2 == 0);
  print(evenNumbers);
}
