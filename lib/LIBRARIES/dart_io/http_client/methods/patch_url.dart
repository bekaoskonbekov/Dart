import 'dart:convert';
import 'dart:io';

void main() async {
  var client = HttpClient();

  try {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    var request = await client.patchUrl(url);
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
