// void main(List<String> args) {
//   fetchUserData().catchError((error) {
//     print("Error caught in catherror: $error");
//   });
// }

// Future<void> fetchUserData() async {
//   try {
//     await Future.delayed(Duration(seconds: 2));
//     throw Exception("Failed to user data");
//   } catch (e) {
//     print("Erorr fetching data: $e");
//   }
// }

// Future<int> divide(int a, int b) async {
//   await Future.delayed(Duration(seconds: 2));
//   if (b == 0) {
//     throw Exception("Cannot divide");
//   } else {
//     return a ~/ b;
//   }
// }

// void main(List<String> args) {
//   divide(10, 0).catchError((error) {
//     print("Exeption $error");
//   });
// }

Future<int> calculateSum(List<int> numbers) async {
  int sum = 0;
  for (int number in numbers) {
    await Future.delayed(
        Duration(milliseconds: 500)); // Simulating asynchronous operation
    sum += number;
    if (number == 3) {
      throw Exception("Error occurred while calculating sum");
    }
  }
  return sum;
}

void main() {
  calculateSum([1, 2, 3, 4, 5]).catchError((error) {
    print("Error caught in catchError: $error");
  });
}
