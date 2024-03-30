import 'dart:io';

void main() async {
  var client = HttpClient();
  var host = 'jsonplaceholder.typicode.com';
  var port = 80;
  var path = '/posts/1';
  try {
    var request = await client.delete(host, port, path);
    var response = await request.close();

    if (response.statusCode == HttpStatus.ok) {
      print('DELETE request successful.');
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  } finally {
    client.close();
  }
}
