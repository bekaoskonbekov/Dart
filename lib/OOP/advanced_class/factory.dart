// class User {
//   final String username;
//   final int age;

//   User(this.username, this.age);

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(json['username'] as String, json['age'] as int);
//   }
// }

// void main() {
//   var json = {'username': 'JohnDoe', 'age': 30};
//   var user = User.fromJson(json);

//   print(
//       'Username: ${user.username}, Age: ${user.age}'); // Output: Username: JohnDoe, Age: 30
// }
// void main(List<String> args) {
//   try {
//     var user = User("JohnDoe", 30);
//     print("${user.username},  ${user.age}"); // Output:
//   } catch (e) {
//     print(e);
//   }
// }

// class User {
//   final String username;
//   int age;
//   User._(this.age, {required this.username});
//   factory User(String username, int age) {
//     if (username.length < 5) {
//       throw ArgumentError('Username must be at least 4 characters long.');
//     } else {
//       return User._(username: username, age);
//     }
//   }
// }
// void main() {
//   var obj1 = User(5);
//   var obj2 = User(10);

//   print(
//       'Object 1: ${obj1.username}, ${obj1.age}'); // Output: Object 1: Object-5, 10
//   print(
//       'Object 2: ${obj2.username}, ${obj2.age}'); // Output: Object 2: Object-10, 20
// }

// class User {
//   final String username;
//   final int age;
//   User._(this.age, this.username);

//   factory User(int parameter) {
//     final userName = "Object $parameter";
//     final age = parameter * 2;
//     return User._(age, userName);
//   }
// }
