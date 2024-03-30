import 'dart:io';

// void main(List<String> args) async {
//   var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
//   print(
//       'Server is running on address ${server.address} and port ${server.port}');

//   await for (HttpRequest request in server) {
//     request.response.write('Hello, world!');
//     await request.response.close();
//   }
// }

Future<void> main() async {
  var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
  print(
      'Server is running on address ${server.address} and port ${server.port}');

  // Handle incoming requests
  await for (var request in server) {
    // Handle each request here
    print('Received ${request.method} request for ${request.uri}');

    // Write response
    request.response.statusCode = HttpStatus.ok;
    request.response.headers.contentType = ContentType.text;
    request.response.write('Hello, World!');
    await request.response.close();
  }

  // Close the server when done
  await server.close();
  print('Server closed');
}
