// import 'dart:convert';
// import 'dart:io';

// void main() async {
//   try {
//     var client = HttpClient();
//     var request = await client
//         .postUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//     var jsonData = {
//       "userId": 110,
//       "title": "Sample Title",
//       "body": "This is a post "
//     };
//     request.add(utf8.encode(json.encode(jsonData)));
//     var response = await request.close();
//     var responseBody = await response.transform(utf8.decoder).join();
//     print('Response status code: ${response.statusCode}');
//     print('Response body: $responseBody');

//     client.close();
//   } catch (e) {
//     print("Error: $e");
//   }
// }

// import 'dart:convert';
// import 'dart:io';

// void main() async {
//   var client = HttpClient();
//   var request = await client
//       .postUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

//   // Adding JSON data to the request body
//   var jsonData = {
//     'userId': 1,
//     'title': 'Sample Title',
//     'body': 'This is a sample body of the post.'
//   };
//   request.add(utf8.encode(json.encode(jsonData)));

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
import 'dart:convert';
import 'dart:io';

void main() async {
  var client = HttpClient();
  var request = await client
      .postUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  // Adding JSON data to the request body
  var jsonData = {
    'userId': 1,
    'title': 'Sample Title',
    'body': 'This is a sample body of the post.'
  };
  request.add(utf8.encode(json.encode(jsonData)));

  try {
    var response = await request.close();
    var responseBody = await response.transform(utf8.decoder).join();

    print('Response status code: ${response.statusCode}');

    if (response.statusCode == HttpStatus.ok) {
      print('Post created successfully:');
      print(responseBody);
    } else {
      print('Error: ${response.statusCode}');
      print('Response body: $responseBody');
    }
  } catch (e) {
    print('Error occurred: $e');
  } finally {
    client.close();
  }
}
