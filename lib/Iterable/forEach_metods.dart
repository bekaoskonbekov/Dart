void main(List<String> args) {
  // var numbers = [0, 1, 2, 3, 4, 5, 6, 7];
  // numbers.forEach((element) {
  //   if (element < 5) {
  //     print(element);
  //   }
  // });
  // var fruits = ["apple", " banana", "orange", "kiwi", "cherry"];
  // fruits.forEach((e) {
  //   if (e.startsWith("a")) {
  //     print(e);
  //   }
  // });
  // var person = {
  //   "Alice": 12,
  //   "Bob": 13,
  //   "Peter ": 14,
  // };
  // person.forEach((name, age) {
  //   print("$name : $age");
  // });

  // var colors = [
  //   "green",
  //   "yellow",
  //   " cyan",
  //   " white",
  // ];
  // colors.asMap().forEach((color, index) {
  //   print("$color : $index");
  // });
//   var names = ["Alice", "Bob", "Peter"];
//   names.forEach((element) => printFunc("Name", element));
// }

// void printFunc(name, age) {
//   print("$name : $age");

  // var numbers = [1, 2, 3, 4, 5, 6, 7];
  // numbers.forEach((element) {
  //   print(element * 2);
  // });
  // var people = [
  //   Person("Alice", 30),
  //   Person("Bob", 31),
  //   Person("Peter", 32),
  // ];
  // people.forEach((person) {
  //   print(" Name: ${person.name} is Age: ${person.age}");
  // });

  // var numbers = [1, 2, 3, 4, 5, 6, 7];
  // numbers.forEach((element) {
  //   if (element % 2 == 0) {
  //     print("$element is even");
  //   } else {
  //     print("$element is odd");
  //   }
  // });
  // List<String> urls = ['url1', 'url2', 'url3'];

  // Future<void> fetchData(String url) async {
  //   // Simulate fetching data asynchronously
  //   await Future.delayed(Duration(seconds: 1));
  //   print('Data fetched from $url');
  // }

  // Future<void> fetchDataForAll() async {
  //   await Future.forEach(urls, (url) async {
  //     await fetchData(url);
  //   });
  // }

  // fetchDataForAll();
//   generateSequence(int start, int end) sync* {
//     for (int i = start; i <= end; i++) {
//       yield i;
//     }
//   }

//   var sequence = generateSequence(1, 8);

//   sequence.forEach((number) {
//     print("Number: $number");
//   });
// }

// class Person {
//   String name;
//   int age;
//   Person(this.name, this.age);

  List<int> numbers = [1, 2, 3, 4, 5];
  int sum = 0;

  numbers.forEach((number) {
    sum += number;
  });

  print('Sum of numbers: $sum');

  var actions = [greet, farewell];
  String name = 'Alice';

  actions.forEach((action) {
    action(name);
  });

  var tasks = [
    Future.delayed(Duration(seconds: 1), () => print('Task 1 completed')),
    Future.delayed(Duration(seconds: 2), () => print('Task 2 completed')),
    Future.delayed(Duration(seconds: 3), () => print('Task 3 completed')),
  ];

  Future.forEach(tasks, (task) => task);
}

void greet(String name) {
  print('Hello, $name!');
}

void farewell(String name) {
  print('Goodbye, $name!');
}
