// import 'dart:convert';
// import 'dart:io';

// void main(List<String> args) async {
//   var client = HttpClient();
//   var url = 'https://jsonplaceholder.typicode.com/posts';
//   try {
//     var request = await client.getUrl(Uri.parse(url));
//     var response = await request.close();
//     var responseBodyBytes = await response.toList();
//     var responseBody = utf8.decode(responseBodyBytes.first);
//     print(responseBody);
//   } catch (e) {
//     print('Error occurred: $e');
//   } finally {
//     client.close();
//   }
// }

// import 'dart:io';

// void main() async {
//   var client = HttpClient();

//   try {
//     var request = await client
//         .getUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//     var response = await request.close();

//     // Read all data from the response body and collect it into a list of bytes
//     var responseBodyBytes = await response.toList();

//     // Print the response body as bytes
//     print('Response Body (Bytes): $responseBodyBytes');
//   } catch (e) {
//     print('Error occurred: $e');
//   } finally {
//     client.close();
//   }
// }

import 'dart:convert';
import 'dart:io';

void main() async {
  var client = HttpClient();
  try {
    var request = await client
        .getUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var response = await request.close();
    var responseBodyBytes = await response.toList();
    var responseBody = utf8.decode(responseBodyBytes.first);
    var posts = jsonDecode(responseBody);
    print(posts);
  } catch (e) {
    print('Error occurred: $e');
  } finally {
    client.close();
  }
}
