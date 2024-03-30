import 'dart:io';

void main(List<String> args) async {
  var file = File('example.txt');
  var bytesData = [72, 101, 108, 108, 111, 44, 32, 68, 97, 114, 116, 33];
  await file.writeAsBytes(bytesData);
}
