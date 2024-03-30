// void main(List<String> args) {
//   print("Fetching Data...");
//   fetchData().then((value) {
//     print("Data recieved $value");
//   }).catchError((error) {
//     print("Error : $error");
//   }).whenComplete(() {
//     print("Procces completed");
//   });
// }

// Future<String> fetchData() {
//   return Future.delayed(Duration(seconds: 2), () {
//     return "Fetch Data ...";
//   });
// }

// Future<int> fetchData() {
//   return Future.delayed(Duration(seconds: 2), () => 42);
// }

// void main(List<String> args) {
//   fetchData().then((value) {
//     print("Fetch number is: $value");
//   }).catchError((error) {
//     print("Error: $error");
//   });
// }

// Future<int> fetchNumber(int number) {
//   return Future.delayed(Duration(seconds: 2), () => number * 2);
// }

// void main(List<String> args) {
//   fetchNumber(4).then((value) {
//     print("Fetch number is: $value");

//   });
// }

// Future<int> fetchData() {
//   return Future.delayed(Duration(seconds: 2), () {
//     if (DateTime.now().minute.isEven) {
//       return 42;
//     } else {
//       throw Exception("An error ");
//     }
//   });
// }

// void main(List<String> args) {
//   fetchData().then((value) {
//     print("Fetching Data: $value");
//   }).catchError((error) {
//     print("Error: $error");
//   });
// }

// void main(List<String> args) {
//   Future.value(42).then((value) {
//     print("Value received : $value");
//     return value * 2;
//   }).then((result) {
//     print("Result after: $result");
//   });
// }

// Future<int> fetchinFirst() {
//   return Future.delayed(Duration(seconds: 1), () => 10);
// }

// Future<int> fetchinSecond() {
//   return Future.delayed(Duration(seconds: 2), () => 20);
// }

// void main(List<String> args) {
//   Future.wait([fetchinFirst(), fetchinSecond()]).then((value) {
//     int sum = value[0] + value[1];
//     print("Sum of two numbers $sum");
//   });
// }

// Future<int> fetchData(bool success) {
//   return Future.delayed(Duration(seconds: 2), () {
//     if (success) {
//       return 42;
//     } else {
//       throw Exception("Faild Data");
//     }
//   });
// }

// void main(List<String> args) {
//   fetchData(true).then((value) {
//     print('Data fetched success: $value');
//   }).catchError((error) {
//     print("Error: $error");
//   }).whenComplete(() {
//     print("Operatino complated");
//   });
// }

// class Custom {
//   Future<String> fetchData() {
//     return Future.delayed(Duration(seconds: 2), () => "Hello World");
//   }
// }

// void main(List<String> args) {
//   Custom custom = Custom();
//   custom.fetchData().then((value) {
//     print("Fetching data: $value");
//   });
// }

Future<String> hello() {
  return Future.delayed(Duration(seconds: 2), () => "Hello");
}

Future<String> word(String str) {
  return Future.delayed(Duration(seconds: 2), () => "$str word");
  ;
}

void main(List<String> args) {
  hello().then((value) {
    print("Recevied value $value");
    return word(value);
  }).then((result) {
    print("Appened str: $result");
  });
}
