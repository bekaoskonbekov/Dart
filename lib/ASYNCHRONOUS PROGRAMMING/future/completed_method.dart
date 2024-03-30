void main(List<String> args) {
  var future = Future.delayed(
      Duration(seconds: 2), () => throw Exception("Error caught"));
  future.whenComplete(() => print("Errrrrrr"));
}
