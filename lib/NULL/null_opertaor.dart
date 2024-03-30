void main(List<String> args) {
  String? nullable;
  nullable ??= "DEFAULT";
  print(nullable);

  String? nullable2 = "Hello, world!";
  nullable2 ??= "DEFAULT";
  print(nullable2);

  String? nullable3;
  String newNullable = "DEFAULT";
  nullable3 ??= newNullable;
  print(nullable3);

  String? nullable4;
  String getNullable() => "DEFAULT VALUE";
  nullable4 ??= getNullable();
  print(nullable4);

  String? nullable5;
  nullable5 ??= "DEFAULT HELP VALUE";
  nullable5 ??= " DEFAULT";
  print(nullable5);

  User? user;
  user ??= User(name: 'John ');
  if (user.name != null) {
    print("User: ${user.name}");
  } else {
    print(" ERROR");
  }
}

class User {
  String? name;
  User({required this.name});
}
