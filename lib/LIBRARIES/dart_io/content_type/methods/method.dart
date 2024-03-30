import 'dart:convert';

import 'package:http/http.dart' as http;

// void main() async {
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
//   var response = await http.post(
//     url,
//     headers: {'Content-Type': 'application/json'},
//     body: '{"username": "user", "password": "pass"}',
//   );

//   print('Response status: ${response.statusCode}');
//   print('Response body: ${response.body}');
// }

// void main() async {
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
//   var response = await http.post(
//     url,
//     headers: {'Content-Type': 'application/json'},
//     body: '{"name": "John", "age": 30}',
//   );

//   print('Response status: ${response.statusCode}');
//   print('Response body: ${response.body}');
// }

// import 'dart:io';

// void main() {
//   // Check the operating system
//   if (Platform.isWindows) {
//     print('Running on Windows');
//   } else if (Platform.isMacOS) {
//     print('Running on macOS');
//   } else if (Platform.isLinux) {
//     print('Running on Linux');
//   } else if (Platform.isAndroid) {
//     print('Running on Android');
//   } else if (Platform.isIOS) {
//     print('Running on iOS');
//   } else {
//     print('Unknown operating system');
//   }

//   // Get the number of processors
//   print('Number of processors: ${Platform.numberOfProcessors}');

//   // Get the path separator
//   print('Path separator: ${Platform.pathSeparator}');

//   // Get the Dart executable path
//   print('Dart executable: ${Platform.executable}');

//   // Get the resolved Dart executable path

//   // Get the package configuration file path
//   print('Package config: ${Platform.packageConfig}');
// }
import 'dart:io';

void main() async {
  // Start a new process asynchronously
  var process = await Process.start('ls', ['-l']);
  process.stdout.transform(utf8.decoder).listen((data) {
    print('stdout: $data');
  });
  process.stderr.transform(utf8.decoder).listen((data) {
    print('stderr: $data');
  });
  var exitCode = await process.exitCode;
  print('Process exited with code $exitCode');

  // Run a shell command asynchronously
  var result = await Process.run('echo', ['Hello, World!']);
  print('stdout: ${result.stdout}');
  print('stderr: ${result.stderr}');
  print('exit code: ${result.exitCode}');

  // Run a shell command synchronously
  var syncResult = Process.runSync('echo', ['Hello, Synchronous World!']);
  print('stdout: ${syncResult.stdout}');
  print('stderr: ${syncResult.stderr}');
  print('exit code: ${syncResult.exitCode}');
}
