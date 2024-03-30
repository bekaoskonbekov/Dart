import 'dart:io';

void main(List<String> args) {
  void main() async {
    var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
    print('Server running on port ${server.port}');

    await for (var request in server) {
      bool isPersistent = request.persistentConnection;
      print('Is persistent connection: $isPersistent');
      // request.persistentConnection = true;
      request.response.write('Hello, world!');
      await request.response.close();
    }
  }
}
