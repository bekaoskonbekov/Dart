import 'dart:io';

void main() async {
  var client = HttpClient();

  try {
    var request =
        await client.head('jsonplaceholder.typicode.com', 80, '/posts/1');
    var response = await request.close();

    if (response.statusCode == HttpStatus.ok) {
      print('HEAD request successful.');
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  } finally {
    client.close();
  }
}
