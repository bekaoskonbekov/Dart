import 'dart:convert';
import 'dart:io';

// void main(List<String> args) async {
//   var file = File("example.txt");
//   await file.create();
//   await file.writeAsString("Hello Drat");
//   print("File creatted");
// }

// void main(List<String> args) async {
//   for (var i = 0; i < 5; i++) {
//     var file = File("hello.txt");
//     await file.create();
//     print("File $i created");
//   }
// }

// void main(List<String> args) async {
//   var file = File("hello.txt");
//   try {
//     await file.create();
//     print("File successfully created");
//   } catch (e) {
//     print("Error creating $e");
//   }
// }
// void main(List<String> args) async {
//   var file = File("hello.txt");
//   await file.create();
//   await file.writeAsString("My , Name is Belek!", encoding: utf8);
//   print("File created with UTF-8 encoding.");
// }

// void main(List<String> args) async {
//   var file = File('hello.txt');
//   if (await file.exists()) {
//     file.delete();
//   }
//   await file.create();
//   print('File created, overwriting existing if any.');
// }
