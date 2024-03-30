import 'dart:convert';
import 'dart:io';

void main() async {
  var client = HttpClient();
  var request = await client
      .postUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  try {
    // Write data to the request body with writeln
    request.write(json.encode({
      'userId': 1,
      'title': 'Sample Title',
      'body': 'This is a sample body.'
    }));

    // Write another line of data
    request.write(json.encode({
      'userId': 2,
      'title': 'Another Title',
      'body': 'This is another sample body.'
    }));

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
