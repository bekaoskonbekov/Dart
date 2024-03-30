import 'dart:io';

void main(List<String> args) {
  var link = Link("link");
  link.target().then((value) => print("Taget file is "));
}
