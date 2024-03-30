import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  void main() async {
    var client = HttpClient();
    var request = await client
        .postUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    try {
      request.write(json.encode({
        'userId': 1,
        'title': 'Sample Title',
        'body': 'This is a sample body.'
      }));
      await request.flush();
      await request.close();
      var response =
          await request.close(); // Attempt to close the request again
      var responseBody = await response.transform(utf8.decoder).join();
      print('Response status code: ${response.statusCode}');
      print('Response body: $responseBody');
    } catch (e) {
      print('Error occurred: $e');
    } finally {
      client.close();
    }
  }
}
