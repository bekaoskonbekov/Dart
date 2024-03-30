import 'dart:io';

// void main(List<String> args) async {
//   var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
//   print('Server running on port ${server.port}');

//   await for (var request in server) {
//     handleRequest(request);
//   }
// }

// void handleRequest(HttpRequest request) {
//   var url = request.uri.toString();
//   print("Full URL: $url");
// }

// void handleRequest(HttpRequest request) {
//   // Retrieve the host and port from the request URL
//   String host = request.uri.host;
//   int port = request.uri.port;
//   print('Host: $host');
//   print('Port: $port');
// }

// void main() async {
//   var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
//   print('Server running  ${server.port}');

//   await for (var request in server) {
//     handleRequest(request);
//   }
// }

void main() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com');
  print('URL: $url'); // Print the URL

  var httpClient = HttpClient();

  try {
    var request = await httpClient.getUrl(url);
    var response = await request.close();
    // Process the response as needed
  } catch (e) {
    print('Error: $e');
  } finally {
    httpClient.close();
  }
}
