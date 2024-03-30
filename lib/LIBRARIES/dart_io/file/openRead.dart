import 'dart:convert';
import 'dart:io';

// void main(List<String> args) async {
//   var file = File('example.txt');
//   var stream = file.openRead();
//   stream.listen(
//     (event) {
//       print("Recieved file $event");
//     },
//     onError: (error) => print("Error: $error"),
//     onDone: () => print("File reading completed"),
//     cancelOnError: true,
//   );
// }

import 'dart:io';

void main() {
  var file = File('example.txt');
  var stream = file.openRead();

  stream.transform(Utf8Decoder()).transform(LineSplitter()).listen(
    (String line) {
      print('Line read from file: $line');
    },
    onDone: () {
      print('File reading completed.');
    },
    onError: (e) {
      print('Error reading file: $e');
    },
    cancelOnError: true,
  );
}
