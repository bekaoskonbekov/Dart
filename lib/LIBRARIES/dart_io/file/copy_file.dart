import 'dart:io';

void main(List<String> args) async {
  var original = File("hello.txt");
  await original.create();
  await original.writeAsString("Hello World Dart");
  await original.copy('hello_copy.txt');
}
