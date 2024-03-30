import 'dart:convert';
import 'dart:io';

void main() async {
  var client = HttpClient();
  var host = 'jsonplaceholder.typicode.com';
  var port = 80;
  var path = '/posts/1';
  try {
    var request = await client.patch(host, port, path);
    request.headers.contentType = ContentType.json;

    var data = {
      'title': 'Updated Title',
      'body': 'Updated Body',
    };

    request.write(json.encode(data));
    var response = await request.close();

    if (response.statusCode == HttpStatus.ok) {
      print('PATCH request successful.');
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  } finally {
    client.close();
  }
}
