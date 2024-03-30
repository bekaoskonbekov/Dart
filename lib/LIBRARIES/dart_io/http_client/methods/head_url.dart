import 'dart:io';

// void main() async {
//   var client = HttpClient();
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

//   try {
//     var request = await client.headUrl(url);
//     var response = await request.close();

//     if (response.statusCode == HttpStatus.ok) {
//       print('HEAD request successful.');
//     } else {
//       print('Error: ${response.statusCode}');
//     }
//   } catch (e) {
//     print('Error: $e');
//   } finally {
//     client.close();
//   }
// }

void main() async {
  var client = HttpClient();
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  try {
    var request = await client.headUrl(url);
    var response = await request.close();

    if (response.statusCode == HttpStatus.ok) {
      print('File exists.');
    } else if (response.statusCode == HttpStatus.notFound) {
      print('File not found.');
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  } finally {
    client.close();
  }
}
