import 'dart:async';

// void main() {
//   // Define a stream of strings
//   Stream<String> stream =
//       Stream.fromIterable(['Apple', 'Banana', 'Cherry', 'Date']);

//   // Define a function to handle each event
//   void onData(String data) {
//     print('Received fruit: $data');
//   }

//   // Listen to events from the stream and attach the onData function as callback
//   stream.listen(
//     onData,
//     onError: (error) => print('Error: $error'), // Error callback
//     onDone: () => print('Stream completed'), // Completion callback
//   );
// }
// void main() {
//   // Define a stream of integers
//   Stream<int> stream =
//       Stream.periodic(Duration(seconds: 1), (index) => index).take(5);

//   // Define a function to handle each event
//   void onData(int data) {
//     print('Received integer: $data');
//   }

//   // Listen to events from the stream and attach the onData function as callback
//   stream.listen(
//     onData,
//     onError: (error) => print('Error: $error'), // Error callback
//     onDone: () => print('Stream completed'), // Completion callback
//   );
// }

// void main() {
//   Stream<int> stream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);

//   void onData(int data) {
//     print('Received data: $data');
//   }

//   void onError(dynamic error) {
//     print('Error: $error');
//   }

//   void onDone() {
//     print('Stream completed');
//   }

//   final subscription = stream.listen(
//     onData,
//     onError: onError,
//     onDone: onDone,
//   );

//   Future.delayed(Duration(seconds: 3), () {
//     subscription.cancel();
//   });
// }

// void main() {
//   Stream<String> stream =
//       Stream.fromIterable(['Apple', 'Banana', 'Cherry', 'Date']);
//   void onData(String data) {
//     print('Received fruit: $data');
//   }
//   stream.listen(
//     onData,
//     onError: (error) => print('Error: $error'),
//     onDone: () => print('Stream completed'),
//   );
// }

// void main() {
//   Stream<int> stream =
//       Stream<int>.periodic(const Duration(seconds: 1), (index) => index)
//           .take(5);
//   void onData(int data) {
//     print('Received integer: $data');
//   }

//   stream.listen(
//     onData,
//     onError: (error) => print('Error: $error'),
//     onDone: () => print('Stream completed'),
//   );
// }

// void main(List<String> args) {
//   Stream<int> stream = Stream<int>.error("Error Stream");

//   void onData(int data) {
//     print("Recieved data $data");
//   }

//   stream.listen(
//     onData,
//     onError: (error) => print("Error: $error"),
//     onDone: () => print("Stream complated"),
//   );
// }

// void main(List<String> args) {
//   var stream = Stream.periodic(Duration(seconds: 2), (index) => index);
//   void onData(int data) {
//     print("Recieved integer: $data");

//     var subs = stream.listen(
//       onData,
//       onError: (error) => print("Error : $error"),
//       onDone: () => print("Stream complated"),
//     );
//     Future.delayed(Duration(seconds: 2), () {
//       subs.cancel();
//     });
//   }
// }

// import 'dart:io';

// void printPattern() {
//   int size = 11;

//   for (int i = 0; i < size; i++) {
//     for (int j = 0; j < size - i; j++) {
//       stdout.write('  ');
//     }
//     for (int k = 0; k <= i; k++) {
//       int num = (k + i) % 10;
//       stdout.write('$num ');
//     }
//     for (int l = i - 1; l >= 0; l--) {
//       int num = (l + i) % 10;
//       stdout.write('$num ');
//     }
//     stdout.write('\n');
//   }

//   for (int i = size - 2; i >= 0; i--) {
//     for (int j = 0; j < size - i; j++) {
//       stdout.write('  ');
//     }
//     for (int k = 0; k <= i; k++) {
//       int num = (k + i) % 10;
//       stdout.write('$num ');
//     }
//     for (int l = i - 1; l >= 0; l--) {
//       int num = (l + i) % 10;
//       stdout.write('$num ');
//     }
//     stdout.write('\n');
//   }
// }

// void main() {
//   printPattern();
// }
import 'dart:io';

void main() {
  print("Enter the first date (YYYY-MM-DD): ");
  String dateStr1 = stdin.readLineSync() ?? "";

  print("Enter the second date (YYYY-MM-DD): ");
  String dateStr2 = stdin.readLineSync() ?? "";

  try {
    DateTime date1 = DateTime.parse(dateStr1);
    DateTime date2 = DateTime.parse(dateStr2);

    // Calculate the difference in days
    int differenceInDays = date2.difference(date1).inDays;

    print("Number of days between the two dates: $differenceInDays");
  } catch (e) {
    print(
        "Invalid date format. Please enter dates in the format 'YYYY-MM-DD'.");
  }
}
