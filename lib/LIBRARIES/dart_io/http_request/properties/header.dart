import 'dart:io';

// void main(List<String> args) async {
//   var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
//   print('Listening on port ${server.port}');
//   await for (var request in server) {
//     handleRequest(request);
//   }
// }

// void handleRequest(HttpRequest request) {
//   var userAgent = request.headers.value('User-Agent');

//   if (userAgent != null) {
//     print('User-Agent: $userAgent');
//   }
// }

// void handleRequest(HttpRequest request) {
//   // Retrieve all headers from the request
//   HttpHeaders headers = request.headers;
//   headers.forEach((String name, List<String> values) {
//     print('$name: ${values.join(', ')}');
//   });
// }

// void main() async {
//   var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
//   print('Server running on port ${server.port}');

//   await for (var request in server) {
//     handleRequest(request);
//   }
// }

void main() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com');
  var httpClient = HttpClient();

  try {
    var request = await httpClient.getUrl(url);
    var response = await request.close();

    if (response.statusCode == HttpStatus.ok) {
      // Print all headers in the response
      response.headers.forEach((String name, List<String> values) {
        print('$name: ${values.join(', ')}');
      });
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  } finally {
    httpClient.close();
  }
}
