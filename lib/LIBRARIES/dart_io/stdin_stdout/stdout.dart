import 'dart:io';

void main() {
  print("What is your name");
  stdout.write('Enter your name: ');
  var name = stdin.readLineSync();
  print('Hello, $name!');
}

// void main(List<String> args) {
//   stdout.write("Enter your address:\n");
//   var address = '';
//   while (true) {
//     var line = stdin.readLineSync();
//     if (line!.isEmpty) {
//       break;
//     }
//     address += line + '\n';
//   }
//   print('Your address is:\n$address');
// // }
// void main() {
//   stdout.write('Enter your age: ');
//   int age = int.parse(stdin.readLineSync()!);
//   print('You are $age years old.');
// // }
// void main() {
//   stdout.write('Enter a decimal number: ');
//   double number = double.parse(stdin.readLineSync()!);
//   print('You entered: $number');
// }
// void main() {
//   stdout.write('Are you a student? (yes/no): ');
//   String response = stdin.readLineSync()!.toLowerCase();
//   bool isStudent = response == 'yes';
//   print('You are a student: $isStudent');
// // }
// void main() {
//   stdout.write('Enter your name: ');
//   String name = stdin.readLineSync()!;
//   print('Hello, $name!');
// }
// void main() {
//   stdout.write('Enter a decimal number: ');
//   double number = double.parse(stdin.readLineSync()!);
//   print('You entered: $number');
// }
// void main() {
//   stdout.write('Are you a student? (yes/no): ');
//   String response = stdin.readLineSync()!.toLowerCase();
//   bool isStudent = response == 'yes';
//   print('You are a student: $isStudent');
// }
// void main() {
//   print("-----------GeeksForGeeks-----------");
//   print("Enter first number");
//   int? n1 = int.parse(stdin.readLineSync()!);

//   print("Enter second number");
//   int? n2 = int.parse(stdin.readLineSync()!);

//   // Adding them and printing them
//   int sum = n1 + n2;
//   print("Sum is $sum");
// }
