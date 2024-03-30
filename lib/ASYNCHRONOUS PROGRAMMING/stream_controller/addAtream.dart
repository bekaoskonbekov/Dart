import 'dart:async';

// void main(List<String> args) {
//   var stream = Stream.fromIterable([1, 2, 3, 4, 5]);
//   var controller = StreamController();
//   controller.addStream(stream);
//   controller.stream.listen((event) {
//     print('Recieved data: $event');
//   });
// }
// void main(List<String> args) {
//   var controller = StreamController();
//   var stream = Stream.periodic(Duration(seconds: 2), (index) => index).take(5);
//   controller.addStream(stream);
//   controller.stream.listen((event) {
//     print("Recieved data: $event");
//   });
// }

// void main(List<String> args) {
//   var controller = StreamController();
//   var stream = Stream.periodic(Duration(seconds: 1), (index) => index);
//   var transStream = stream.map((event) => event * 2);
//   controller.addStream(transStream);
//   controller.stream.listen((event) {
//     print("Recieved data: $event");
//   });
// }
