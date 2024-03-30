import 'package:flutter/widgets.dart';

void main(List<String> args) {
  var res = Text(text: "Hello");
  print(res.text);
}

class Text {
  final String text;
  Text({this.text = ''});
}

// class Text1{
//   final String content;
//   Text1(String content){
//   this.content = content;
// }}
