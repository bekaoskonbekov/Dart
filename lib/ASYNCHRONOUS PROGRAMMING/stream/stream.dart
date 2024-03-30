// void main(List<String> args) {
//   var stream = Stream.fromIterable([2, 3, 4, 5, 6, 7]);
//   var strem2 = stream.where((event) => event.isEven);

//   strem2.listen(
//     (event) {
//       print("Stream: $event");
//     },
//     onDone: () {
//       print("Erororrr");
//     },
//   );
// }

// import 'dart:async';

// void main(List<String> args) {
//   var controller = StreamController();
//   var subscribe = controller.stream.listen(
//     (data) {
//       print("Recieved : $data");
//     },
//     onDone: () {
//       print("close");
//     },
//   );
//   controller.sink.add(1);
//   controller.sink.add(2);
//   controller.close();
// }
// void main() {
//   var stream = Stream<int>.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

//   stream.skip(3).take(5).listen((data) {
//     print('Received: $data');
//   }, onDone: () {
//     print('Stream is closed');
//   });
// }

// import 'dart:async';

// void main() {
//   StreamController stream = StreamController();

//   var subscription = stream.onListen;

//   // pause after 2 seconds
//   Timer(
//     Duration(seconds: 2),
//     () {
//       print('Pausing the subscription');
//       subscription;
//     },
//   );

//   // resume after three seconds later
//   Timer(
//     Duration(seconds: 5),
//     () {
//       print('Resuming the subscription');
//       subscription.resume();
//     },
//   );
// }
