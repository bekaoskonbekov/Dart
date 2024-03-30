// import 'dart:async';

// void main() {
//   // Create a StreamController
//   var controller = StreamController<int>();

//   // Get the stream from the StreamController
//   var stream = controller.stream;

//   // Listen to the stream
//   stream.listen((data) {
//     print('Received data: $data');
//   }, onError: (error) {
//     print('Error: $error');
//   }, onDone: () {
//     print('Stream closed');
//   });

//   // Add data to the stream
//   controller.add(1);
//   controller.add(2);
//   controller.add(3);

//   // Close the stream
//   controller.close();
// }

import 'dart:async';

// void main() {
//   // Create a StreamController
//   var streamController = StreamController<int>();

//   // Get the StreamSink from the StreamController
//   var streamSink = streamController.sink;

//   // Create another stream
//   var otherStream = Stream<int>.fromIterable([6, 7, 8, 9, 10]);

//   // Add the stream subscription to the sink
//   streamSink.addStream(otherStream);

//   // Close the stream
//   streamSink.close();
// }

// Future<void> processItems(List<int> items) async {
//   await Future.forEach(items, (int item) async {
//     // Simulate processing time
//     await Future.delayed(Duration(seconds: 1));
//     print('Processed item: $item');
//   });
//   print('All items processed');
// }

// void main() {
//   List<int> itemList = [1, 2, 3, 4, 5];
//   processItems(itemList);
// }

// class Item {
//   final String name;
//   final int quantity;

//   Item(this.name, this.quantity);
// }

// Future<void> processItems(List<Item> items) async {
//   await Future.forEach(items, (Item item) async {
//     await Future.delayed(Duration(seconds: 1));
//     print('Processed ${item.quantity} ${item.name}(s)');
//   });
//   print('All items processed');
// }

// void main() {
//   List<Item> itemsList = [
//     Item('Apple', 5),
//     Item('Banana', 3),
//     Item('Orange', 4),
//   ];
//   processItems(itemsList);
// }

// Future<void> processItems(List<int> items) async {
//   try {
//     await Future.forEach(items, (int item) async {
//       // Simulate error for item 3
//       if (item == 3) {
//         throw Exception('Error processing item $item');
//       }
//       // Simulate processing time
//       await Future.delayed(Duration(seconds: 1));
//       print('Processed item: $item');
//     });
//     print('All items processed');
//   } catch (e) {
//     print('Error: $e');
//   }
// }

// void main() {
//   List<int> itemList = [1, 2, 3, 4, 5];
//   processItems(itemList);
// }

// class Product {
//   final String name;
//   final double price;

//   Product(this.name, this.price);
// }

// Future<void> processProducts(Iterable<Product> products) async {
//   await Future.forEach(products, (Product product) async {
//     print('Processing ${product.name}...');
//     // Simulate processing time
//     await Future.delayed(Duration(seconds: 1));
//     print('Processed ${product.name} priced at \$${product.price}');
//   });
//   print('All products processed');
// }

// void main() {
//   List<Product> productList = [
//     Product('Laptop', 1200),
//     Product('Smartphone', 800),
//     Product('Headphones', 150),
//   ];
//   processProducts(productList);
// }
// void main() {
//   // Create a stream
//   Stream<String> originalStream =
//       Stream.fromIterable(['Apple', 'Banana', 'Cherry', 'Apricot', 'Orange']);

//   // Filter the stream to emit only strings starting with "A"
//   Stream<String> filteredStream =
//       originalStream.where((element) => element.startsWith('A'));

//   // Listen to the filtered stream
//   filteredStream.listen((data) {
//     print('Received data: $data');
//   });
// }

// class Person {
//   final String name;
//   final int age;

//   Person(this.name, this.age);
// }

// void main() {
//   // Create a stream
//   Stream<Person> originalStream = Stream.fromIterable([
//     Person('Alice', 25),
//     Person('Bob', 30),
//     Person('Charlie', 20),
//     Person('Diana', 35),
//   ]);

//   // Filter the stream to emit only persons younger than 30
//   Stream<Person> filteredStream =
//       originalStream.where((person) => person.age < 30);

//   // Listen to the filtered stream
//   filteredStream.listen((person) {
//     print('Received data: ${person.name} (${person.age})');
//   });
// }
// void main() {
//   // Create a stream
//   Stream<int> originalStream =
//       Stream.periodic(Duration(seconds: 1), (index) => index).take(10);

//   // Filter the stream to emit only even numbers
//   Stream<int> filteredStream =
//       originalStream.where((element) => element % 2 == 0);

//   // Listen to the filtered stream
//   filteredStream.listen((data) {
//     print('Received even number: $data');
//   });
// }

// import 'dart:async';

// class Product {
//   final String name;
//   final double price;

//   Product(this.name, this.price);
// }

// void main() {
//   // Create a stream
//   Stream<Product> originalStream = Stream.fromIterable([
//     Product('Apple', 1.5),
//     Product('Banana', 2.0),
//     Product('Orange', 1.0),
//     Product('Mango', 3.0),
//     Product('Pineapple', 2.5),
//   ]);

//   // Filter the stream to emit only products with a price less than 2.0 and name length greater than 5
//   Stream<Product> filteredStream = originalStream
//       .where((product) => product.price < 2.0 && product.name.length > 5);

//   // Listen to the filtered stream
//   filteredStream.listen((product) {
//     print('Received product: ${product.name} (\$${product.price})');
//   });
// }

// void main() {
//   // Create a stream of lists
//   Stream<List<String>> originalStream = Stream.fromIterable([
//     ['apple', 'banana', 'cherry'],
//     ['orange', 'grape', 'melon'],
//     ['strawberry', 'blueberry', 'raspberry'],
//   ]);

//   // Map each list to its length
//   Stream<int> mappedStream =
//       originalStream.map((List<String> list) => list.length);

//   // Listen to the mapped stream
//   mappedStream.listen((int length) {
//     print('Length of list: $length');
//   });
// }

// import 'dart:async';

// class Person {
//   final String name;
//   final int age;

//   Person(this.name, this.age);
// }

// void main() {
//   // Create a stream of persons
//   Stream<Person> originalStream = Stream.fromIterable([
//     Person('Alice', 25),
//     Person('Bob', 30),
//     Person('Charlie', 35),
//   ]);

//   // Map each person to a formatted string
//   Stream<String> mappedStream = originalStream
//       .map((Person person) => '${person.name} is ${person.age} years old');

//   // Listen to the mapped stream
//   mappedStream.listen((String info) {
//     print(info);
//   });
// }
// import 'dart:async';

// void main() {
//   // Create a stream of integers
//   Stream<int> originalStream =
//       Stream.periodic(Duration(seconds: 1), (index) => index).take(5);

//   // Map each even number to its square
//   Stream<int> mappedStream = originalStream
//       .where((value) => value % 2 == 0)
//       .map((value) => value * value);

//   // Listen to the mapped stream
//   mappedStream.listen((int value) {
//     print('Square of even number: $value');
//   });
// }

// void main() {
//   // Create a stream of lists of strings
//   Stream<List<String>> originalStream = Stream.fromIterable([
//     ['apple', 'banana', 'cherry'],
//     ['orange', 'grape', 'melon'],
//     ['strawberry', 'blueberry', 'raspberry'],
//   ]);

//   // Map each list to a list of uppercase strings
//   Stream<List<String>> mappedStream = originalStream
//       .map((list) => list.map((item) => item.toUpperCase()).toList());

//   // Listen to the mapped stream
//   mappedStream.listen((List<String> uppercaseList) {
//     print('Uppercase list: $uppercaseList');
//   });
// }

// void main() {
//   // Create a stream of lists of numbers
//   Stream<List<int>> originalStream = Stream.fromIterable([
//     [1, 2, 3],
//     [4, 5, 6],
//     [7, 8, 9],
//   ]);

//   // Map each list to its sum
//   Stream<int> mappedStream = originalStream
//       .map((list) => list.reduce((value, element) => value + element));

//   // Listen to the mapped stream
//   mappedStream.listen((int sum) {
//     print('Sum of numbers: $sum');
//   });
// }

// import 'dart:async';

// class User {
//   final int id;
//   final String name;

//   User(this.id, this.name);
// }

// void main() {
//   // Create a stream of user IDs
//   Stream<int> originalStream = Stream.fromIterable([1, 2, 3, 4, 5]);

//   // Simulated database lookup function
//   Future<User> getUserById(int id) async {
//     // Simulate database query
//     await Future.delayed(Duration(seconds: 1));
//     // Return user object
//     return User(id, 'User$id');
//   }

//   // Map each user ID to a user object
//   Stream<User> mappedStream = originalStream.asyncMap((id) => getUserById(id));

//   // Listen to the mapped stream
//   mappedStream.listen((user) {
//     print('User ID: ${user.id}, User Name: ${user.name}');
//   });
// }

// import 'dart:convert';

// void main() {
//   // Create a stream of JSON strings
//   Stream<String> originalStream = Stream.fromIterable([
//     '{"id": 1, "name": "John"}',
//     '{"id": 2, "name": "Alice"}',
//     '{"id": 3, "name": "Bob"}',
//   ]);

//   // Map each JSON string to a parsed map
//   Stream<Map<String, dynamic>> mappedStream =
//       originalStream.map((jsonString) => jsonDecode(jsonString));

//   // Listen to the mapped stream
//   mappedStream.listen((data) {
//     print('Parsed Map: $data');
//   });
// }
import 'dart:async';

void main() {
  // Create a stream of DateTime objects
  Stream<DateTime> originalStream =
      Stream.periodic(Duration(seconds: 2), (count) => DateTime.now()).take(3);

  // Map each DateTime object to a formatted string
  Stream<String> mappedStream =
      originalStream.map((dateTime) => 'Current time: ${dateTime.toString()}');

  // Listen to the mapped stream
  mappedStream.listen((formattedString) {
    print(formattedString);
  });
}
