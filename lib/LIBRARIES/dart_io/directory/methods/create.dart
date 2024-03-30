import 'dart:io';

// void main(List<String> args) {
//   var direct = Directory('example');
//   direct
//       .create()
//       .then((value) => print('Directory created'))
//       .catchError((error) => print('Directory not created'));

// }

// void main(List<String> args) {
//   var director = Directory('parent/child');
//   director
//       .create(recursive: true)
//       .then((value) => print('Recieved: $value'))
//       .catchError((error) => print('Error : $error'));
// }

// void main(List<String> args) {
//   var ditrect = ['dir1', 'dir2', 'dir3'];
//   Future.forEach(ditrect, (element) {
//     var directory = Directory(element);
//     return directory.create();
//   }).then((value) => print("Recieved: "));
// }
