// void main(List<String> args) {
//   try {
//     var result = 10 ~/ 0;
//     print(result);
//   } catch (e) {
//     print("Error:  $e");
//   }
// }

// void main(List<String> args) {
//   try {
//     var result = 10 ~/ 0;
//     print(result);
//   } catch (e, s) {
//     print("Error: $e");
//     print("Stack: $s");
//   }
// }

// void main(List<String> args) {
//   try {
//     var result = 10 ~/ 0;
//     print(result);
//   } catch (e) {
//     print("Error:  $e");
//   } finally {
//     print("Finally");
//   }
// }

// void main(List<String> args) {
//   try {
//     var result = 10 ~/ 0;
//     print(result);
//   } catch (e) {
//     print("Error:  $e");
//   } catch (e) {
//     print("Outer exception caught::  $e");
//   }
// }

// void main(List<String> args) {
//   try {
//     someRisky();
//   } catch (e) {
//     print("Error:  $e");
//     throw Exception("Outer exception caught");
//   }
// }

// someRisky() {
//   throw "Somthing is not allowed in this environment";
// }

// void main(List<String> args) {
//   try {
//     int.parse('abc');
//   } on FormatException {
//     print('FormatException');
//   } catch (e) {
//     print("Error:  $e");
//   }
// }

// Future<void> main() async {
//   try {
//     await doAsyncTask();
//   } catch (e) {
//     print('Exception caught: $e');
//   }
// }

// Future<void> doAsyncTask() async {
//   // Simulating an asynchronous error
//   throw Exception('An error occurred in an async task');
// }

// void main() {
//   try {
//     openFile();
//     // Perform operations on the file
//   } finally {
//     closeFile();
//   }
// }

// void openFile() {
//   print('Opening file...');
//   // Code to open the file
// }

// void closeFile() {
//   print('Closing file...');
//   // Code to close the file
// }

import 'dart:io';
import 'dart:core';

void main() {
  File file;
  IOSink? writer;
  try {
    file = File('message.txt');
    writer = file.openWrite();
    writer.write('Hello');
  } on FileSystemException {
    print('File not found');
  } finally {
    writer?.close();
  }
}
