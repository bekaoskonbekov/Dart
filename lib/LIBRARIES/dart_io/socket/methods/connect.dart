import 'dart:io';

// void main(List<String> args) {
//   Socket.connect('example.com', 8080).then((socket) {
//     socket.write('GET / HTTP/1.1\r\nHost: example.com\r\n\r\n');
//     socket.listen((data) {
//       print(data);
//     }, onDone: () {
//       socket.close();
//     });
//   }).catchError((error) {
//     print('Error connecting to server: $error');
//   }).catchError((_) {
//     print('Error connecting to server');
//   }).whenComplete(() {
//     print('Done connecting to server');
//   });
// }

void main() async {
  var server = await HttpServer.bind(InternetAddress.anyIPv6, 80);
  await server.forEach((HttpRequest request) {
    request.response.write('Hello, world!');
    request.response.close();
  });
}
