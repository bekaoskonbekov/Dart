import 'dart:io';

void main(List<String> args) async {
  var file = File('hello.txt');
  await file.create();
  await file.writeAsString("HEllo World Dart");
  await file.rename("example.txt");
  print("Renamed successful");
  if (await file.exists()) {
    var size = file.length();
    var lastMod = file.lastModified();
    print("Last MOd: $lastMod");
    print("Size $size");
  } else {
    print("Error");
  }
}
