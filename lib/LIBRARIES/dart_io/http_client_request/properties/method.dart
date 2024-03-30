// import 'dart:io';

// void main() async {
//   var client = HttpClient();

//   // Perform a GET request
//   var getRequest = await client.getUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//   getRequest.method = 'GET';

//   // Perform a POST request
//   var postRequest = await client.postUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//   postRequest.method = 'POST';

//   // Perform a PUT request
//   var putRequest = await client.putUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
//   putRequest.method = 'PUT';

//   // Perform a DELETE request
//   var deleteRequest = await client.deleteUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
//   deleteRequest.method = 'DELETE';

//   try {
//     var getResponse = await getRequest.close();
//     print('GET Response status code: ${getResponse.statusCode}');

//     var postResponse = await postRequest.close();
//     print('POST Response status code: ${postResponse.statusCode}');

//     var putResponse = await putRequest.close();
//     print('PUT Response status code: ${putResponse.statusCode}');

//     var deleteResponse = await deleteRequest.close();
//     print('DELETE Response status code: ${deleteResponse.statusCode}');
//   } catch (e) {
//     print('Error occurred: $e');
//   } finally {
//     client.close();
//   }
// }
