import 'dart:io';

// void main(List<String> args) {
//   stdout.write('Enter your age: ');
//   int age = int.parse(stdin.readLineSync()!);
//   print('You are $age years old.');
// }

// void main() {
//   stdout.write('Enter your age: ');
//   int age = int.parse(stdin.readLineSync()!);
//   print('You are $age years old.');
// }
// void main() {
//   stdout.write('Are you a student? (yes/no): ');
//   String response = stdin.readLineSync()!.toLowerCase();
//   bool isStudent = response == 'yes';
//   print('You are a student: $isStudent');
// }

void main() {
  stdout.write('Enter a decimal number: ');
  double number = double.parse(stdin.readLineSync()!);
  print('You entered: $number');
}
