import 'dart:convert';

void main() {
  // JSON Encoding and Decoding
  // Map<String, dynamic> user = {
  //   'name': 'John Doe',
  //   'age': 30,
  //   'email': 'john.doe@example.com'
  // };

  // String jsonUser = jsonEncode(user);
  // print('JSON Encoded User: $jsonUser');

  // Map<String, dynamic> decodedUser = jsonDecode(jsonUser);
  // print('Decoded User: $decodedUser');

  // // UTF-8 Encoding and Decoding
  // String text = 'Hello, world!';
  // List<int> utf8Encoded = utf8.encode(text);
  // print('UTF-8 Encoded: $utf8Encoded');
  // var dec = [104, 101, 108, 108, 111, 44, 32, 119, 111, 114, 108, 100, 33];
  // String decodedText = utf8.decode(dec);
  // print('Decoded Text: $decodedText');
  // print(text);

  // // Base64 Encoding and Decoding
  List<int> bytes = utf8.encode('Dart is fun!');
  String base64Encoded = base64.encode(bytes);
  print('Base64 Encoded: $base64Encoded');

  List<int> decodedBytes = base64.decode(base64Encoded);
  String decodedString = utf8.decode(decodedBytes);
  print('Decoded String: $decodedString');
}
