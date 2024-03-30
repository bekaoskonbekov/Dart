// void main() async {
//   print("Fetching Data...");
//   fetchData().then((value) => print(value));
//   print('Program continues...');
// }

// Future<String> fetchData() async {
//   await Future.delayed(Duration(seconds: 2));
//   return "Data fetch success";
// }

// import 'dart:convert';
// import 'dart:io';
// Future<String> fetchDataFromNW() async {
//   HttpClient httpClient = HttpClient();
//   HttpClientRequest httpRequest = await httpClient
//       .getUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//   HttpClientResponse httpClientResponse = await httpRequest.close();
//   return await httpClientResponse.transform(const Utf8Decoder()).join();
// }

// void main(List<String> args) {
//   print('Fetching data from network...');

//   fetchDataFromNW().then((value) {
//     print("Data received: $value");
//   }).catchError((error) {
//     print("Error fetching data $error");
//   });
// }

// import 'dart:io';

// Future<String> readFile(String filePath) async {
//   File file = File(filePath);
//   return await file.readAsString();
// }

// void main(List<String> args) {
//   print(":Reading file");

//   readFile('example.txt').then((value) {
//     print("File content: $value");
//   });
// }

// Future<String> fetchData1() async {
//   await Future.delayed(Duration(seconds: 2));
//   return 'Data from source 1';
// }

// Future<String> fetchData2() async {
//   await Future.delayed(Duration(seconds: 3));
//   return 'Data from source 2';
// }

// void main() {
//   print('Fetching data concurrently...');
//   Future.wait([fetchData1(), fetchData2()]).then((List<String> results) {
//     print('Data received: ${results[0]} and ${results[1]}');
//   }).catchError((error) {
//     print('Error fetching data: $error');
//   });
// }

Future<int> fetchNumber() async {
  await Future.delayed(Duration(seconds: 2));
  return 42;
}

Future<String> fetchString() async {
  await Future.delayed(Duration(seconds: 3));
  return 'Hello, world!';
}

void main() async {
  print('Fetching data...');
  final results = await Future.wait([fetchNumber(), fetchString()]);
  final number = results[0];
  final string = results[1];
  print('Number: $number, String: $string');
}
