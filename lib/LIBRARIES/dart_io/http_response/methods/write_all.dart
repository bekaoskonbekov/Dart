import 'dart:convert';
import 'dart:io';

// void main() {
//   // Example 1: Writing a single line to the response body
//   writelnExample('Hello, World!');

//   // Example 2: Writing multiple lines to the response body
//   var lines = ['Line 1', 'Line 2', 'Line 3'];
//   lines.forEach((line) => writelnExample(line));
// }

// void writelnExample(String line) {
//   var response = HttpResponse(stdout);
//   response.writeln(line);
//   response.close();
// }

// void main() {
//   // Example: Adding chunks of data to the response body
//   var dataChunks = ['Chunk 1', 'Chunk 2', 'Chunk 3'];
//   addChunksToResponse(dataChunks);
// }

// void addChunksToResponse(List<String> chunks) {
//   var response = HttpResponse( stdout);
//   chunks.forEach((chunk) => response.add(utf8.encode(chunk)));
//   response.close();
// }
