import 'dart:convert';
import 'dart:io';

void main() async {
  var client = HttpClient();

  try {
    var request =
        await client.post('jsonplaceholder.typicode.com', 80, '/posts');
    request.headers.contentType = ContentType.json;

    // Example JSON data
    var data = {
      'title': 'foo',
      'body': 'bar',
      'userId': 1,
    };

    request.write(json.encode(data));
    var response = await request.close();

    if (response.statusCode == HttpStatus.created) {
      print(await response.transform(utf8.decoder).join());
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  } finally {
    client.close();
  }
}
