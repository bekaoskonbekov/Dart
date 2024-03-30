import 'dart:io';

// void main(List<String> args) async {
//   var client = HttpClient();
//   try {
//     var response = await client.get(
//         'https://jsonplaceholder.typicode.com', 8080, '/todos/1');
//     print(await response);
//   } catch (e) {
//     print('Error: $e');
//   } finally {
//     client.close();
//   }
// }



// void main() async {
//   var client = HttpClient();
  
//   try {
//     var response = await client.get('example.com', 80, '/path');
//     await response.forEach((data) {
//       print('Received data: $data');
//     });
//   } catch (e) {
//     print('Error: $e');
//   } finally {
//     client.close();
//   }
// }