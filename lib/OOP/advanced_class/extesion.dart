// void main(List<String> args) {
//   var args = Example2(12, firstName: "Alice", lastName: 'Bob');
//   print("Running: ${args.firstName} ${args.lastName} AGE: ${args.age}");
//   args.create();
// }

// abstract class Service {
//   final String firstName;
//   Service({required this.firstName});
//   void create();
// }

// class Example1 extends Service {
//   final int age;
//   Example1(this.age, {required super.firstName});

//   @override
//   void create() {
//     print('create');
//   }
// }

// class Example2 extends Example1 {
//   final String lastName;
//   Example2(
//     super.age, {
//     required this.lastName,
//     required super.firstName,
//   });
//   void delete() => print("delete");
// }

// class Example3 extends Example2 {
//   String fullName;
//   Example3(this.fullName, super.age,
//       {required super.lastName, required super.firstName});
// }

// void main(List<String> args) {
//   var result = Example4();
//   print("NAME: ${result.fullName} AGE: ${result.age}");
//   result.create();
//   result.delete();
//   result.update();
//   result.fetch();
// }

// abstract class Example {
//   final String firstName;

//   Example({required this.firstName});
//   void create() {}
// }

// class Example1 {
//   final int age;

//   Example1({required this.age});
//   void fetch() {}
// }

// class Example2 {
//   final String lastName;

//   Example2({required this.lastName});

//   void delete() {}
// }

// class Example3 {
//   final String fullName;
//   Example3({required this.fullName});
//   void update() {}
// }

// class Example4 implements Example, Example1, Example2, Example3 {
//   @override
//   int get age => 13;

//   @override
//   void create() {
//     print('create');
//   }

//   @override
//   void delete() {
//     print('delete');
//   }

//   @override
//   void fetch() {
//     print('fetch');
//   }

//   @override
//   String get firstName => "Peter";

//   @override
//   String get fullName => "$firstName $lastName";

//   @override
//   String get lastName => "Alice";

//   @override
//   void update() {
//     print('update');
//   }
// }

// void main() {
//   var result = Example4();
//   result.create();
//   result.personAge(17);
//   result.delete();
//   result.update();
//   result.fetch();
// }

// mixin Example {
//   String name = "";
//   void create() {
//     if (name.isEmpty) {
//       print("Name is empty");
//     } else {
//       print("Name is not empty");
//     }
//   }

//   personAge(int age) {
//     if (age >= 18) {
//       print("Age is greater than 18");
//     } else {
//       print("Age is less than 18");
//     }
//   }
// }

// mixin Example1 {
//   void fetch() {
//     print("fetch");
//   }
// }

// mixin Example2 {
//   void delete() {
//     print("delete");
//   }
// }

// mixin Example3 {
//   void update() {
//     print("update");
//   }
// }

// class Example4 with Example, Example1, Example2, Example3 {}
