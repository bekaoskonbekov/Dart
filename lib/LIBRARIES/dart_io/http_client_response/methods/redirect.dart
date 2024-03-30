// import 'dart:io';

// void main(List<String> args) async {
//   var client = HttpClient();
//   var url = 'https://jsonplaceholder.typicode.com';
//   try {
//     var request = await client.getUrl(Uri.parse(url));

//     var response = await request.close();
//     if (response.isRedirect) {
//       var redirectedResponse = await response.redirect();
//       print('Redirected status code: ${redirectedResponse.statusCode}');
//     } else {
//       print('Original status code: ${response.statusCode}');
//     }
//   } catch (e) {}
// }
import 'dart:convert';
import 'dart:io';

void main() async {
  var client = HttpClient();

  try {
    var request = await client
        .getUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var response = await request.close();

    // Check if the response is a redirect
    if (response.isRedirect) {
      // Follow the redirect
      var redirectedResponse = await response.redirect();
      print('Redirected status code: ${redirectedResponse.statusCode}');
      var responseBody =
          await redirectedResponse.transform(utf8.decoder).join();
      print('Redirected response body: $responseBody');
    } else {
      // Handle the original response
      print('Original status code: ${response.statusCode}');
      var responseBody = await response.transform(utf8.decoder).join();
      print('Original response body: $responseBody');
    }
  } catch (e) {
    print('Error occurred: $e');
  } finally {
    client.close();
  }
}
