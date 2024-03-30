import 'dart:convert';
import 'dart:io';

void main() async {
  var client = HttpClient();
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users');

  try {
    var request = await client.openUrl('GET', url);
    var response = await request.close();

    if (response.statusCode == HttpStatus.ok) {
      print(await response.transform(utf8.decoder).join());
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  } finally {
    client.close();
  }
}
