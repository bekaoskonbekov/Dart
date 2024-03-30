// void main(List<String> args) {
//   var numbers = [1, 2, 3, 4, 5, 6];
//   var sqrt = numbers.map((e) => e * e).toList();
//   print(sqrt);
// }
// void main(List<String> args) {
//   var numbers = [1, 2, 3, 4, 5, 6];
//   var numbers2 = [7, 8, 9, 10, 11, 12, 13, 14, 15];
//   var sqrt = numbers.map((x) => x + numbers2[numbers.indexOf(x)]);
//   print(sqrt);
// }

// void main(List<String> args) {
//   var word = ['Hello ', 'World'];
//   var capitalWord = word.map((e) => e.toUpperCase()).toList();
//   print(capitalWord);
// }

// void main(List<String> args) {
//   var words = ['Hello ', 'World'];
//   var capitalWords = words.map((e) => e.length).toList();
//   print(capitalWords);
// }

// void main(List<String> args) {
//   var color = ['blue', 'green', 'yellow', 'orange'];
//   var capitalColor = color.map((e) => " ${color.indexOf(e)} : $e").toList();
//   print(capitalColor);
// }

class Person {
  final String name;
  final int age;
  Person(this.name, this.age);
}

// void main(List<String> args) {
//   var person = [
//     Person('Alice', 30),
//     Person('Bob', 30),
//   ];

//   var sqt = person
//       .map((element) => "Name: ${element.name}, Age: ${element.age}")
//       .toList();
//   print(sqt);
// }

// void main(List<String> args) {
//   List<int?> numbers = [1, null, 3, null, 5];
//   var sqt = numbers.map((e) => e ?? 0).toList();
//   print(sqt);
// }

// void main(List<String> args) {
//   var numbers = [1, 2, 3, 4, 5];
//   var sqt = numbers.map((e) => e % 2 == 0 ? 'even' : 'odd').toList();
//   print(sqt);
// }

// void main(List<String> args) {
//   var strNumber = ['1', '2', '3', '4', '5', '6'];
//   var sqt = strNumber.map((numParse) => int.parse(numParse)).toList();
//   print(sqt);
// }

void main(List<String> args) {
  var date = [DateTime(2024, 12, 25), DateTime(2024, 10, 20)];
  var sqrt = date.map((e) => "${e.year}-${e.month}-${e.day}").toList();
  print(sqrt);
}
