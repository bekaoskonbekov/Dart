import 'dart:io';

// void main(List<String> args) {
//   var nestedDirect = Directory('parent/child');
//   try {
//     nestedDirect.createSync(recursive: true);
//     print('Directory created successfully');
//   } on FileSystemException catch (e) {
//     print('Directory already exists');
//   }
// }

// void main(List<String> args) {
//    var direct =  Directory.systemTemp.createSync();
//    print("TempDir: ${direct.path}")
// }
// void main(List<String> args) {
//   var directories = ['dir1.dart', 'dir2', 'dir3'];
//   try {
//     for (var directory in directories) {
//       var nestedDirect = Directory(directory);
//       nestedDirect.createSync(recursive: true);
//       print('Directory created successfully');
//     }
//   } catch (e) {
//     print('Directory already exists');
//   }
// }

void main(List<String> args) async {
  var file = File('test.dart');
  await file.create();
  await file.delete();
}
