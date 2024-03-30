import 'dart:convert';
import 'dart:io';

void main() async {
  var client = HttpClient();
  var request = await client
      .getUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  try {
    var response = await request.close();
    if (response.statusCode != HttpStatus.ok) {
      request.abort();
      print('Request aborted.');
      return;
    }
    var responseBody = await response.transform(utf8.decoder).join();
    print('Response status code: ${response.statusCode}');
    print('Response body: $responseBody');
  } catch (e) {
    print('Error occurred: $e');
  } finally {
    client.close();
  }
}
