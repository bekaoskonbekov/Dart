// void main(List<String> args) {
//   var future = Future.delayed(Duration(seconds: 3), () => "Delayed value");
//   var stream = Stream.fromFuture(future);

//   stream.listen((event) {
//     print("REcivied data $event");
//   });
// }

// void main(List<String> args) {
//   var future = Future.delayed(Duration(seconds: 2), () {
//     throw Exception("Exeption error");
//   });
//   var stream = Stream.fromFuture(future);
//   stream.listen((event) {
//     print("Recivied data $event");
//   },
//       onError: (error) => print("Error : $error "),
//       onDone: () => print("Data Complated"));
// }

import 'dart:async';

// void main(List<String> args) {
//   var future = Future.delayed(Duration(seconds: 2), () => 42);
//   var stream = Stream.fromFuture(future);
//   var streamTransform = stream.transform(StreamTransformer.fromHandlers(
//     handleData: (data, sink) {
//       sink.add(data * 2);
//     },
//   ));

//   streamTransform.listen((event) {
//     print("Recieved double $event");
//   },
//       onError: (error) => print("Error : $error"),
//       onDone: () => print("Double Completed"));
// }

// void main(List<String> args) {
//   var stream = Stream.fromFuture(Future.value(10));
//   stream.listen((event) {
//     print("Recieved $event");
//   });
// }

// void main(List<String> args) {
//   var stream = Stream.fromIterable([1, 2, 3, 4, 5]);
//   stream.listen((event) {
//     print("Recieved $event");
//   });
// }
// void main(List<String> args) {
//   var stream = Stream.fromIterable(List.generate(5, (index) => index));

//   stream.listen((event) {
//     print("Recieved $event");
//   });
// }

// void main(List<String> args) {
//   var stream = Stream.fromIterable([null]);
//   stream.listen((event) {
//     print("Recieved $event");
//   }, onError: (error) => print("Error: $error"));
// }

void main() {
  // Create a stream from a generator function
  Stream<int> stream = Stream<int>.fromIterable(generateNumbers(6));

  // Subscribe to the stream
  stream.listen((data) {
    print('Received data: $data');
  });
}

Iterable<int> generateNumbers(int count) sync* {
  for (int i = 0; i < count; i++) {
    yield i;
  }
}
