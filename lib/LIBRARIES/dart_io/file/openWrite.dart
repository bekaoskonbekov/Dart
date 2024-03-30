import 'dart:io';

// void main(List<String> args) {
//   var file = File('example.txt');
//   var owrite = file.openWrite();
//   owrite.write("Hello");
//   owrite.writeln("Line 1");
//   owrite.close();
// }

void main() {
  var inputFile = File('file1.txt');
  var outputFile = File('output.txt');

  var inputStream = inputFile.openRead();
  var outputStream = outputFile.openWrite();

  inputStream.pipe(outputStream);

  outputStream.close().then((_) {
    print('Data copied from input file to output file.');
  }).catchError((error) {
    print('Error copying data: $error');
  });
}
