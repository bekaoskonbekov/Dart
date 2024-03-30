import 'dart:io';

// void main(List<String> args) async {
//   var client = HttpClient();
//   try {
//     var request =
//         await client.getUrl(Uri.parse('https://jsonplaceholder.typicode.com'));
//     await request.close();
//     print("Successfully got URL");
//   } catch (e) {
//     print('Error: $e');
//   } finally {
//     client.close();
//   }
// }

void main() async {
  var client = HttpClient();

  try {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com');
    var request = await client.getUrl(uri);
    request.headers.add('Custom-Header', 'value');

    var response = await request.close();

    // Handle the response...
  } catch (e) {
    print('Error: $e');
  } finally {
    client.close();
  }
}
