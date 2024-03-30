import 'dart:io';

void main(List<String> args) {
  var file = File('example.txt');
  if (file.existsSync()) {
    var bytesSync = file.readAsBytesSync();
    print("'File content as bytes: $bytesSync'");
  } else {
    print('File does not exist.');
  }
}
