// import 'dart:async';

// void main(List<String> args) {
//   Timer.periodic(Duration(seconds: 1), (timer) {
//     print("Timer ");
//   });
// }

// import 'dart:async';

// void main() {
//   print('Start of the program');

//   Timer(Duration(seconds: 2), () {
//     print('Two seconds elapsed');
//   });

//   print('End of the program');
// }

// import 'dart:async';

// void main() {
//   print('Start of the program');

//   Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
//     print('One second elapsed');
//   });

//   // Cancel the timer after 5 seconds
//   Timer(Duration(seconds: 5), () {
//     timer.cancel();
//     print('Timer cancelled');
//   });
// }

// import 'dart:async';

// void main() {
//   print('Start of the program');

//   int counter = 0;

//   Timer.periodic(Duration(seconds: 1), (timer) {
//     counter++;
//     print('Counter: $counter');
//     if (counter >= 5) {
//       timer.cancel();
//       print('Timer cancelled');
//     }
//   });
// }
// import 'dart:async';

// void animate() {
//   Timer.periodic(Duration(milliseconds: 100), (timer) {
//     print('Animating...');
//     // Perform animation logic here
//   });
// }

// void main() {
//   print('Start of the animation');
//   animate();
//   // Simulate animation running for 5 seconds
//   var timer = Timer(Duration(seconds: 5), () {
//     print('End of the animation');

//     // Stop animation logic here
//   });
//   timer.cancel();
// }

// import 'dart:async';

// Stream<String> capitalizeStream(Stream<String> stream) async* {
//   await for (String value in stream) {
//     yield value.toUpperCase();
//   }
// }

// void main() async {
//   Stream<String> originalStream =
//       Stream.fromIterable(['apple', 'banana', 'cherry']);
//   Stream<String> transformedStream = capitalizeStream(originalStream);
//   await for (String value in transformedStream) {
//     print('Transformed value: $value');
//   }
// }

// import 'dart:async';

// Stream<int> filterPositiveNumbers(Stream<int> stream) async* {
//   await for (int number in stream) {
//     if (number > 0) {
//       yield number;
//     }
//   }
// }

// void main() async {
//   Stream<int> originalStream =
//       Stream.periodic(Duration(milliseconds: 500), (index) => index - 2)
//           .take(7);
//   Stream<int> filteredStream = filterPositiveNumbers(originalStream);
//   await for (int number in filteredStream) {
//     print('Positive number: $number');
//   }
// // }
// import 'dart:async';

// Stream<int> generateStream() async* {
//   for (int i = 1; i <= 3; i++) {
//     yield i;
//     await Future.delayed(Duration(seconds: 1));
//   }
// }

// void main() async {
//   Stream<int> stream = generateStream();

//   await stream.forEach((value) {
//     print('Received value: $value');
//   });

//   print('Stream completed');
// // }
// import 'dart:async';

// Stream<int> generateStream() async* {
//   for (int i = 1; i <= 3; i++) {
//     yield i;
//     await Future.delayed(Duration(seconds: 1));
//   }
// }

// void main() async {
//   Stream<int> stream = generateStream();
//   await stream.drain();
//   print('Stream drained');
// }
import 'dart:async';
import 'dart:io';

Stream<int> generateStream() async* {
  for (int i = 1; i <= 3; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
  throw Exception('Error in stream');
}

void main() async {
  Stream<int> stream = generateStream();

  try {
    await for (int value in stream) {
      print('Received value: $value');
    }
  } catch (e) {
    print('Error occurred: $e');
  }
}
