// void main(List<String> args) {
//   fetchData()
//       .timeout(
//     Duration(seconds: 2),
//     onTimeout: () => throw "Timeout occurred'",
//   )
//       .then((value) {
//     print("Fetching data... $value");
//   }).catchError((erorr) {
//     print("Erorrrrr : $erorr");
//   }).whenComplete(() => print("Fetching process completed....."));
//   fetchError().then((value) {
//     print(" NUllll $value");
//   }).catchError((error) {
//     print("Error occurred : $error");
//   }).whenComplete(() => print("Fetching data all completed..."));
// }

Future<int> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 42);
}

// Future<int> fetchError() {
//   return Future.delayed(Duration(seconds: 3), () => throw "Belekeeeee");
// }

// Future<int> ftechData2(int number) {
//   return Future.delayed(Duration(seconds: 1), () => number * 20);
// }

// void main(List<String> args) {
//   fetchData()
//       .then((value) => ftechData2(4))
//       .then((res) => print("RESULT: $res"))
//       .catchError((error) {
//     print("Error: $error");
//   });
// }

Future<void> processItems(List<String> items) async {
  await Future.forEach(items, (String item) async {
    await processItem(item);
  });
}

Future<void> processItem(String item) async {
  await Future.delayed(Duration(seconds: 1));
  print('Processed item: $item');
}

void main() {
  var items = ["apple", "banana", "orange", "cherry"];
  processItems(items);
}
