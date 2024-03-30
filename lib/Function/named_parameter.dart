void main(List<String> args) {
  print(greet("Welcome to", title: "Greeting"));
  print(connect("localhost"));
  print(connecting('localhost', user: 'root', password: '123'));
}

String greet(String name, {String title = ''}) {
  if (title.isEmpty) {
    return "Hello $name";
  }
  return "Hello $name $title";
}

connect(String host,
    {int port = 3306, String user = "root", String password = ""}) {
  print("Connecting to $host on port $port using $user/$password ...");
}

connecting(String host,
    {int port = 3306, required String user, required String password}) {
  print("Connecting to $host on  $port using $user/$password...");
}
