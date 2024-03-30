import 'dart:io';

// void main(List<String> args) {
//   var target = Directory("target_directory");
//   var link = Link('symbolic_link');
//   link
//       .create(target.path)
//       .then((_) => print("Link created"))
//       .catchError((_) => print("Link creation failed"));

// }

void main(List<String> args) async {
  var fileLink = await File("file.txt");
  if (!fileLink.existsSync()) {
    fileLink.createSync();
  } else {
    print("File already exists");
  }
  await fileLink.writeAsString("Hello World");
  var link = Link('file_link');
  await link
      .create(fileLink.path, recursive: true)
      .then((_) => print("Link created"))
      .catchError((_) => print("Link creation failed"));
  await link.delete();
}
