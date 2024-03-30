void main(List<String> args) {
  Map<String, String> fruits = {"apple": "sweet", "banana": "yellow"};

  bool hasMango =
      fruits.containsKey("mango"); // false (key "mango" doesn't exist)
  bool hasApple = fruits.containsKey("apple"); // true

  print(hasMango); // Output: false
  print(hasApple);
}
