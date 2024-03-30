import 'dart:io';

import 'package:flutter_application_1/LIBRARIES/dart_io/file/file_path.dart';

void main(List<String> args) {
  var file = File(FilePath.filePath);
  try {
    file.delete();
  } catch (e) {
    print("Error: $e");
  }
}
