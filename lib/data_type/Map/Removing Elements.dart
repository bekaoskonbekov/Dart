void main(List<String> args) {
  Map<String, String> colors = {
    "red": "primary",
    "green": "secondary",
    "blue": "primary"
  };

  var removedValue =
      colors.remove("green"); // Removes "green" and returns its value

  print(colors); // Output: {red: primary, blue: primary}
  print(removedValue); // Output: secondary

  var nonExistingValue = colors.remove("purple"); // Returns null

  print(nonExistingValue);

  Map<int, String> numbers = {1: "one", 2: "two"};

  numbers.clear(); // Removes all key-value pairs

  print(numbers);
}
