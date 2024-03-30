import 'dart:io';

// void main(List<String> args) async {
//   var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
//   print('Server running on port ${server.port}');
//   await for (var request in server) {
//     handleHequest(request);
//     request.response.close();
//   }
// }

// void handleHequest(HttpRequest request) {
//   var method = request.method;
//   print('Http method: $method');
// }

// import 'dart:io';

// void handleRequest(HttpRequest request) {
//   // Retrieve the HTTP method used in the request
//   String method = request.method;

//   // Check if the request method is allowed
//   if (method == 'GET') {
//     // Allow GET requests
//     request.response
//       ..statusCode = HttpStatus.ok
//       ..write('GET request successful')
//       ..close();
//   } else {
//     // Disallow other HTTP methods
//     request.response
//       ..statusCode = HttpStatus.methodNotAllowed
//       ..write('Only GET requests are allowed')
//       ..close();
//   }
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
    var request = await httpClient.putUrl(url);
    var method = request.method; // Retrieve the HTTP method
    print('HTTP Method: $method');

    // var response = await request.close();
    // Process the response as needed
  } catch (e) {
    print('Error: $e');
  } finally {
    httpClient.close();
  }
}
