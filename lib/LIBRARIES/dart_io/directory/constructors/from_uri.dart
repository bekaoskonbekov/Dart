import 'dart:io';

void main(List<String> args) {
  var directUri = Uri.parse('file:///path/to/directory');
  var direct = Directory.fromUri(directUri);

  var fileUri = Uri.parse('file:///path/to/file.txt');
  var file = File.fromUri(fileUri);

  print(direct.path);
}
