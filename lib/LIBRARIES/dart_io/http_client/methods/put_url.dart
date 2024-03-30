import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  var client = HttpClient();
  try {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    var request = await client.putUrl(url);
    request.headers.contentType = ContentType.json;
    var data = {'title': 'Hello, world!'};
    var body = json.encode(data);
    request.write(body);
    var response = await request.close();
    print(response.statusCode);
    if (response.statusCode == 200) {
      var body = await response.transform(utf8.decoder).join();
      print(body);
    }
  } catch (e) {}
}
