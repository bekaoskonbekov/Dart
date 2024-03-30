import 'dart:async';

// void main(List<String> args) {
//   var controller = StreamController();
//   controller.stream.listen((event) {
//     print("Recieved data $event");
//   });

//   controller.add("Hello");
//   controller.add("World");
//   controller.add("Dart");
//   // controller.close();
//   controller.add(4);
// }
// class Person {
//   final int id;
//   final String name;

//   Person(this.id, this.name);
// }

// void main(List<String> args) {
//   var controller = StreamController<Person>();
//   controller.stream.listen((event) {
//     print("Recieved ID:${event.id}- Name: ${event.name}");
//   });
//   controller.add(Person(1, "Alice"));
//   controller.add(Person(2, "Bob"));
//   controller.add(Person(3, "Peter"));
//   controller.close();
// }

// void main() {
//   // Create a StreamController
//   var controller = StreamController<int>();
//   controller.add(1);
//   controller.addError(Exception('An error occurred'));
//   controller.add(2);

//   // Close the stream
//   controller.close();
//   // Listen to the stream with error handling
//   controller.stream.listen(
//     (data) {
//       print('Received data: $data');
//     },
//     onError: (error) {
//       print('Error occurred: $error');
//     },
//     onDone: () {
//       print('Stream completed');
//     },
//   );
// }

// import 'dart:async';

// void main() {
//   // Create a broadcast StreamController
//   var controller = StreamController<int>.broadcast();

//   // Listen to the broadcast stream
//   controller.stream.listen((data) {
//     print('Listener 1 received data: $data');
//   });

//   // Add data to the broadcast stream
//   controller.add(1);

//   // Add a second listener
//   controller.stream.listen((data) {
//     print('Listener 2 received data: $data');
//   });

//   // Add more data to the broadcast stream
//   controller.add(2);
//   controller.add(3);

//   // Close the stream
//   controller.close();
// }
import 'dart:async';

Stream<String> capitalizeStream(Stream<String> stream) async* {
  await for (String value in stream) {
    yield value.toUpperCase();
  }
}

void main() async {
  Stream<String> originalStream =
      Stream.fromIterable(['apple', 'banana', 'cherry']);
  Stream<String> transformedStream = capitalizeStream(originalStream);
  await for (String value in transformedStream) {
    print('Transformed value: $value');
  }
}
