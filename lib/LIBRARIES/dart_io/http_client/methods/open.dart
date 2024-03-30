import 'dart:convert';
import 'dart:io';

// void main() async {
//   var client = HttpClient();
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

//   try {
//     var request = await client.open('GET', url.host, url.port, url.path);
//     var response = await request.close();

//     if (response.statusCode == HttpStatus.ok) {
//       print(await response.transform(utf8.decoder).join());
//     } else {
//       print('Request failed with status: ${response.statusCode}');
//     }
//   } catch (e) {
//     print('Error: $e');
//   } finally {
//     client.close();
//   }
// }

// void main() async {
//   var client = HttpClient();
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

//   try {
//     var request = await client.open('POST', url.host, url.port, url.path);
//     request.headers.contentType = ContentType.json;
//     request.write(json.encode({'title': 'foo', 'body': 'bar', 'userId': 1}));
//     var response = await request.close();

//     if (response.statusCode == HttpStatus.ok) {
//       print(await response.transform(utf8.decoder).join());
//     } else {
//       print('Request failed with status: ${response.statusCode}');
//     }
//   } catch (e) {
//     print('Error: $e');
//   } finally {
//     client.close();
//   }
// }

void main() async {
  var client = HttpClient();
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  var queryParams = {'userId': '1'};

  try {
    var request = await client.open('GET', url.host, url.port,
        url.path + '?' + Uri(queryParameters: queryParams).query);
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
