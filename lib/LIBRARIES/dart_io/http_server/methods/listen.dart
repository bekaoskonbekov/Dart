import 'dart:io';

// void main() async {
//   var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
//   print(
//       'Server is running on address ${server.address} and port ${server.port}');

//    server.listen(
//     (HttpRequest request) {
//       print(" Recieved: ${request.method} ${request.uri}");
//       request.response.close();

//       // Write response
//       request.response.statusCode = HttpStatus.ok;
//       request.response.headers.contentType = ContentType.text;
//       request.response.write('Hello, World!');
//       request.response.close();
//     },
//   );
// }

// void main() async {
//   var server = await HttpServer.bind(InternetAddress.anyIPv6, 8080);
//   print(
//       'Server is running on IPv6 address ${server.address} and port ${server.port}');

//   // Rest of the server setup...
// }
// void main() async {
//   var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
//   var serverAddress = server.address;
//   print('Server is running on address $serverAddress and port ${server.port}');

//   // Rest of the server setup...
// }
// void main() async {
//   var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
//   var serverId = server.id;
//   print('Server ID: $serverId');

//   // Rest of the server setup...
// }