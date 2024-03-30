import 'dart:io';

void main() async {
  var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
  print('Server running on port ${server.port}');

  server.listen((HttpRequest request) {
    // Set a cookie in the response
    var response = request.response;
    response.cookies.add(Cookie('my_cookie', 'cookie_value'));

    response.write('Cookie set');
    response.close();
  });
}
