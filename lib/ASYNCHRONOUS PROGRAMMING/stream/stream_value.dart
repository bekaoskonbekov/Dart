// void main(List<String> args) {
//   var stream = Stream.value("Hello world");
//   stream.listen((event) {
//     print("My name is $event");
//   });
// }

// class Person {
//   final int id;
//   final String name;
//   Person(this.id, this.name);
// }

// void main(List<String> args) {
//   var person = Person(1, "Alice");
//   var stream = Stream<Person>.value(person);
//   stream.listen((event) {
//     print("Person : ${event.id} - Name: ${event.name}");
//   });
// }

// void main(List<String> args) {
//   var stream = Stream.value(DateTime.now());
//   stream.listen((event) {
//     print("Date time : $event");
//   });
// }

// void main(List<String> args) {
//   var stream = Stream<Map<String, dynamic>>.value(
//       {"name": "Alice", "age": 30, "isStudent": false});
//   stream.listen((event) {
//     print("Person : $event");
//   });
// }

void main() {
  // Create a future that resolves to a string after a delay
  Future<String> futureValue =
      Future.delayed(Duration(seconds: 2), () => 'Delayed Value');

  // Create a stream that emits a single future value
  Stream<Future<String>> stream = Stream<Future<String>>.value(futureValue);

  // Subscribe to the stream
  stream.listen((data) {
    data.then((value) {
      print('Received data: $value');
    });
  });
}
