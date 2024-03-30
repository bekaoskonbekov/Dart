import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  var client = HttpClient();
  var url = 'https://jsonplaceholder.typicode.com/posts';

  try {
    var request = await client.getUrl(Uri.parse(url));
    var response = await request.close();
    var responseBody = await response.transform(utf8.decoder).join();
    print(responseBody);
  } catch (e) {
    print("Error: $e");
  }
}
