void main(List<String> args) {
  Map<String, String> fruits = {
    "apple": "sweet",
    "banana": "yellow",
    "orange": "citrusy",
  };

  print(fruits);

  Map<String, int> ages = {"Alice": 30};
  ages.putIfAbsent(
      "Bob", () => 25); // Adds "Bob" with value 25 if it doesn't exist

  print(ages);

  Map<String, String> colors1 = {"red": "primary"};
  Map<String, String> colors2 = {"green": "secondary", "blue": "primary"};

  colors1.addAll(colors2);

  print(colors1);

  Map<String, String> vegetables = {"potato": "root"};
  vegetables["tomato"] = "fruit"; // Adds "tomato" with value "fruit"

  print(vegetables);
}
