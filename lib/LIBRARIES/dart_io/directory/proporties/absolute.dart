import 'dart:io';
import 'dart:math';

// void main(List<String> args) {
//   var direct = Directory('example');
//   if (direct.isAbsolute) {
//     print('The path is absolute.');
//   } else {
//     print('The path is not absolute.');
//   }
// }

// void main(List<String> args) {
//   var currentDirect = Directory.current;
//   var absolutePath = currentDirect.absolute.path;
//   print(absolutePath);
// }

void main(List<String> args) {
  var direct = Directory('example');
  if (direct.existsSync()) {
    print('The path is absolute. ${direct.absolute.path}');
  } else {
    print('The path is not absolute. ${direct.absolute.path}');
  }
}
