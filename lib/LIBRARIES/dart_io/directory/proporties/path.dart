import 'dart:io';

// void main(List<String> args) {
//   var path = Directory('/tmp/test.txt');
//   print("path: ${path.path}");
//   print("parent: ${path.parent}");
//   print("URI: ${path.uri}");
//   print("absolute: ${path.absolute}");
// // }
// void main(List<String> args) {
//   var basePath = Directory.current;
//   var realityPath = 'subdirectory';
//   var directory = Directory("${basePath.path} $realityPath");
//   print("path: ${directory.path}");
//   // print("parent: ${directory.parent}");
//   // print("URI: ${directory.uri}");
//   // print("absolute: ${directory.absolute}");
// }

// void main(List<String> args) {
//   var homeDirectory = Directory.systemTemp;
//   print("path: ${homeDirectory.path}");
//   print("parent: ${homeDirectory.parent}");
//   print("URI: ${homeDirectory.uri}");
//   print("absolute: ${homeDirectory.absolute}");
// }

void main(List<String> args) {
  var directName = 'data';
  var fileName = 'example.txt';
  var direct = Directory.current;
  var filePath = '${direct.path}/$directName/$fileName';
  print(filePath); // /tmp/data/example.txt'
}
