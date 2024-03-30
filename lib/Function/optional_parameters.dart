void main(List<String> args) {
  print(greet("John ", "Professor"));
  print(greeting('Alice', "Professor"));
}

String greet(String name, String message) {
  return "Hello $name $message";
}

String greeting(String name, [String message = '']) {
  if (message.isEmpty) {
    return "Hello $name";
  }
  return "Hello $name $message";
}
