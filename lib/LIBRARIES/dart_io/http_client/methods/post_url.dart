import 'dart:convert';
import 'dart:io';

// void main(List<String> args) async {
//   var client = HttpClient();
//   try {
//     var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
//     var request = await client.postUrl(uri);

//     request.headers.contentType = ContentType.json;
//     var data = {'key', 'value'};
//     request.write(json.encode(data));
//     var response = await request.close();

//     print(await response.transform(utf8.decoder).join());
//   } catch (e) {
//     print(e);
//   } finally {
//     client.close();
//   }
// }

import 'dart:convert';
import 'dart:io';

void main() async {
  var client = HttpClient();
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  try {
    var request = await client.postUrl(url);
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
