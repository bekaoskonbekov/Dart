void main(List<String> args) {
  greet();
  greet1("Peter");
  String name = "Bob";
  greet2(name);
  String greeting = greet3(name);
  print(greeting);
  print(greet4(name));
  print(greet5('John', 'Professor'));
}

void greet() {
  print("Hello World");
}

greet1(String name) {
  print("Hello $name");
}

void greet2(String name) {
  print("Hello $name");
}

String greet3(String name1) {
  return "Hi $name1";
}

String greet4(String name) {
  return "Hello $name";
}

greet5(String name, String title) {
  return "Hello $name $title";
}
