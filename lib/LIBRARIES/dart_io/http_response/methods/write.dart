import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

// void main(List<String> args) async {
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
//   var response = await http.get(url);
//   stdout.write('Example 1: Writing the entire response body\n');
//   // stdout.write(response.body);
//   // Example 2: Writing specific fields from JSON response
//   stdout.write('\n\nExample 2: Writing specific fields from JSON response\n');
//   var jsonResponse = jsonDecode(response.body);
//   for (var item in jsonResponse) {
// stdout.write('Title: ${item['title']}\n');
// stdout.write('Body: ${item['body']}\n');
// stdout.write('\n');
// }

// Example 3: Writing formatted JSON response
// stdout.write('\nExample 3: Writing formatted JSON response\n');
// var formattedJsonResponse =
//     JsonEncoder.withIndent('  ').convert(jsonResponse);
// stdout.write(formattedJsonResponse);

// Example 4: Writing specific data from JSON response
// stdout.write('\n\nExample 4: Writing specific data from JSON response\n');
// var firstItem = jsonResponse[0];
// stdout.write('Title: ${firstItem['id']}\n');
// stdout.write('Body: ${firstItem['title']}\n');

// Example 5: Writing data from multiple API endpoints
//   stdout.write('\nExample 5: Writing data from multiple API endpoints\n');
//   var postResponse = await http
//       .post(url, body: {'title': 'foo', 'body': 'bar', 'userId': '1'});
//   stdout.write('Status code of POST request: ${postResponse.statusCode}\n');

//   var putUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
//   var putResponse = await http.put(putUrl,
//       body: {'id': '1', 'title': 'foo', 'body': 'bar', 'userId': '1'});
//   stdout.write('Status code of PUT request: ${putResponse.statusCode}\n');

//   var deleteUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
//   var deleteResponse = await http.delete(deleteUrl);
//   stdout.write('Status code of DELETE request: ${deleteResponse.statusCode}\n');
// }

// void main(List<String> args) async {
//   // Example 1: GET request to retrieve posts and write the entire response body
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
//   var response = await http.get(url);
//   print(response.body);
// }

void main() async {
  // Example 6: GET request to retrieve a single post and write specific fields to the response body
  // var singlePostUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  // var singlePostResponse = await http.get(singlePostUrl);
  // writeSelectedFields(singlePostResponse);

  // Example 7: POST request to create multiple posts and write the response body
  // var multiplePostsUrl =
  //     Uri.parse('https://jsonplaceholder.typicode.com/posts');
  // var multiplePostsResponse = await http.post(multiplePostsUrl,
  //     body: jsonEncode([
  //       {'title': 'Post 1', 'body': 'Body of Post 1', 'userId': 1},
  //       {'title': 'Post 2', 'body': 'Body of Post 2', 'userId': 1},
  //     ]));
  // writeResponse(multiplePostsResponse);

  // Example 8: PUT request to update multiple posts and write the response body
  var putMultiplePostsUrl =
      Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  var putMultiplePostsResponse = await http.put(putMultiplePostsUrl,
      body: jsonEncode([
        {
          'id': 1,
          'title': 'Updated Post 1',
          'body': 'Updated Body of Post 1',
          'userId': 1
        },
        {
          'id': 2,
          'title': 'Updated Post 2',
          'body': 'Updated Body of Post 2',
          'userId': 1
        },
      ]));
  writeResponse(putMultiplePostsResponse);
}

void writeSelectedFields(http.Response response) {
  var jsonResponse = jsonDecode(response.body);
  print('Selected fields from the response:');
  print('Title: ${jsonResponse['title']}');
  print('Body: ${jsonResponse['body']}');
  print('\n');
}

void writeResponse(http.Response response) {
  print('Status code: ${response.statusCode}');
  print('Response body:');
  print(response.body);
  print('\n');
}
