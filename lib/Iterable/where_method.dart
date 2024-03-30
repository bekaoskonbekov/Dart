// void main(List<String> args) {
//   var numbers = [1, 2, 3, 4, 5, 6];
//   var evenNumber = numbers.where((element) => element % 2 == 0);
//   print(evenNumber);
// }
// void main(List<String> args) {
//   var numbers = [-1, -2, 1, 2, 3, 4, 5, 6];
//   var positiveNumber = numbers.where((element) => element > 0);
//   print(positiveNumber);
// }

// void main(List<String> args) {
//   var words = ["apple", "banana", "orange", "armut"];
//   var startWidth = words.where((element) => element.startsWith("a"));
//   print(startWidth);
// }

class User {
  String name;
  int age;
  User(this.name, this.age);
}

// void main(List<String> args) {
//   var listName = [
//     User("John", 23),
//     User("Beka", 24),
//     User("Ali", 12),
//     User("David", 15),
//   ];
//   var result = listName.where((element) => element.age > 18);
//   print("Name: $result");
// }
// void main(List<String> args) {
//   List<String> filePaths = [
//     "documents/file1.pdf",
//     "images/image1.jpg",
//     "documents/file2.docx",
//     "videos/video1.mp4",
//     "documents/file3.pdf",
//   ];

//   var file = filePaths.where((element) => element.endsWith(".pdf"));
//   print(file);
// }
// class Task {
//   String description;
//   DateTime dateCompleted;

//   Task(this.description, this.dateCompleted);
// }

// void main() {
//   List<Task> tasks = [
//     Task("Task 1", DateTime(2024, 3, 17)),
//     Task("Task 2", DateTime(2024, 3, 16)),
//     Task("Task 3", DateTime(2024, 3, 17)),
//     Task("Task 4", DateTime(2024, 3, 15)),
//   ];

//   var tasksCompletedToday =
//       tasks.where((task) => task.dateCompleted == DateTime.now()).toList();

//   print("Tasks completed today: $tasksCompletedToday");
// }
class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

void main() {
  List<Product> products = [
    Product("Laptop", 1200),
    Product("Mouse", 30),
    Product("Keyboard", 50),
    Product("Monitor", 300),
  ];

  var affordableProducts = products.where((product) => product.price < 100);

  print("Affordable products: $affordableProducts");
}
