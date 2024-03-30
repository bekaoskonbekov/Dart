import 'dart:io';

// void main(List<String> args) {
//   var current = Directory.current;
//   print(current.path);
// }
void main() {
  var currentDirectory = Directory.current;
  var files = currentDirectory.listSync();
  print('Files in current directory:');
  for (var entity in files) {
    if (entity is File) {
      print(entity.path);
    }
  }
}
