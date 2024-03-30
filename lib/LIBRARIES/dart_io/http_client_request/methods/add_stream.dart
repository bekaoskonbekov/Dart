// import 'dart:convert';
// import 'dart:io';

// Future main(List<String> args) async {
//   var client = HttpClient();
//   var uri = "https://jsonplaceholder.typicode.com/posts";

//   try {
//     var request = await client.postUrl(Uri.parse(uri));
//     var dataStream = Stream.fromIterable(['Chunk 1', 'Chunk 2', 'Chunk 3'])
//         .transform(utf8.encoder);
//     await request.addStream(dataStream);
//     var response = await request.close();
//     var responseBody = response.transform(utf8.decoder).join();
//     print('Response status code: ${response.statusCode}');
//     print('Response body: $responseBody');
//   } catch (e) {
//     print('Error occurred: $e');
//   } finally {
//     client.close();
//   }
// }

// import 'dart:convert';
// import 'dart:io';

// void main() async {
//   var client = HttpClient();
//   var request = await client
//       .postUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

//   // Open a file stream
//   var file = File('example.txt');
//   var fileStream = file.openRead();

//   // Add the file stream to the request body
//   await request.addStream(fileStream);

//   try {
//     var response = await request.close();
//     var responseBody = await response.transform(utf8.decoder).join();

//     print('Response status code: ${response.statusCode}');
//     print('Response body: $responseBody');
//   } catch (e) {
//     print('Error occurred: $e');
//   } finally {
//     client.close();
//   }
// }

import 'dart:async';
import 'dart:convert';
import 'dart:io';

// Define a custom stream that emits chunks of data
Stream<String> customDataStream() async* {
  yield 'Chunk 1';
  await Future.delayed(Duration(seconds: 1)); // Simulate asynchronous delay
  yield 'Chunk 2';
  await Future.delayed(Duration(seconds: 1)); // Simulate asynchronous delay
  yield 'Chunk 3';
}

void main() async {
  var client = HttpClient();
  var request = await client
      .postUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  // Create a custom stream of data
  var stream = customDataStream().transform(utf8.encoder);

  // Add the custom stream to the request body
  await request.addStream(stream);

  try {
    var response = await request.close();
    var responseBody = await response.transform(utf8.decoder).join();

    print('Response status code: ${response.statusCode}');
    print('Response body: $responseBody');
  } catch (e) {
    print('Error occurred: $e');
  } finally {
    client.close();
  }
}
