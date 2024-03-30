import 'dart:convert';
import 'dart:io';

void main() async {
  var client = HttpClient();
  var request = await client
      .postUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  try {
    var dataChunks = [
      json.encode({
        'userId': 1,
        'title': 'Sample Title',
        'body': 'This is a sample body.'
      }),
      '\n', // Add a newline separator
      json.encode({
        'userId': 2,
        'title': 'Another Title',
        'body': 'This is another sample body.'
      }),
    ];

    // Write multiple data chunks to the request body
    request.writeAll(dataChunks);

    // Flush the buffered data immediately
    await request.flush();

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
