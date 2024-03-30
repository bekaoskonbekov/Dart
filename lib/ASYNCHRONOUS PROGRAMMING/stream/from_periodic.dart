// void main(List<String> args) {
//   var stream = Stream.periodic(Duration(seconds: 2), (count) => count);
//   stream.listen((event) {
//     print("Recieved $event");
//   });
// }

// void main(List<String> args) {
//   var stream =
//       Stream.periodic(Duration(milliseconds: 1), (count) => 0.5 * (count + 2));
//   stream.listen((event) {
//     print("Recieved $event");
//   });
// // }
// void main(List<String> args) {
//   var stream = Stream<Person>.periodic(Duration(seconds: 1),
//       (count) => Person(count + 1, "Person ${count + 1}"));
//   stream.listen((event) {
//     print("Recieved: ${event.id}- ${event.name}");
//   });
// }

// class Person {
//   final int id;
//   final String name;
//   Person(this.id, this.name);
// }

// enum Direction { up, down, left, right }

// void main() {
//   // Create a stream that emits enum values alternately every 2 seconds
//   Stream<Direction> stream = Stream<Direction>.periodic(
//     Duration(seconds: 2),
//     (count) => count.isEven ? Direction.up : Direction.down,
//   );

//   // Subscribe to the stream
//   stream.listen((data) {
//     print('Received data: $data');
//   });
// }
// import 'dart:math';

// class Location {
//   final double lat;
//   final double long;
//   Location(this.lat, this.long);
// }

// void main(List<String> args) {
//   var stream = Stream.periodic(
//       Duration(seconds: 2),
//       (_) => Location(
//           Random().nextDouble() * 180 - 90, Random().nextDouble() * 360 - 180));
//   stream.listen((data) {
//     print(
//         "Received geolocation data: Latitude = ${data.lat}, Longitude = ${data.long}");
//   });
// }

void main(List<String> args) {
  var stream = Stream.periodic(Duration(seconds: 2), (count) => count + 1);
  stream.listen((event) {
    print("TRecieved: $event");
  });
}
