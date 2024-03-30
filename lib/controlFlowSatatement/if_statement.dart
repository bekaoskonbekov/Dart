enum TrafficColor {
  Red,
  Green,
  Yellow,
}

void main(List<String> args) {
  int number = 10;
  if (number > 1) {
    print("The number is negative");
  } else {
    print("The number is positive");
  }

  String str1 = "B";
  if (str1 == "A") {
    print("excellent works");
  } else if (str1 == "B") {
    print("good job");
  } else {
    print("The string is null");
  }

  List<String> fruitList = ['apple', 'orange', 'banana'];
  String selectedFruit = 'orange';
  if (fruitList[0].contains(selectedFruit)) {
    print("Selected fruit is in the list0");
  } else if (fruitList[1].contains(selectedFruit)) {
    print("Selected fruit is in the list1");
  } else {
    print("Selected fruit is not in the list");
  }
  Map<String, String> mapColor = {
    "apple": "red",
    "orange": "green",
    " banana": "blue"
  };
  String selectedColor = "orange";
  if (mapColor.containsKey(selectedColor)) {
    print("The color of $selectedColor is ${mapColor[selectedColor]}");
  } else {
    print("Selected color is not in the map");
  }
  TrafficColor color = TrafficColor.Red;
  if (color == TrafficColor.Red) {
    print("Stop");
  } else if (color == TrafficColor.Green) {
    print("Go");
  } else {
    print("Wait");
  }

  int num2 = 10;
  var result = (num2 < 0) ? "pass" : "fail";
  print(result);

  int number3 = 10;
  String message = (number3 > 0) ? "Positive" : "Non-positive";
  print(message);

  Map<String, String> countries = {
    "US": "English",
    "France": "French",
    "Germany": "German"
  };

  for (MapEntry<String, String> entry in countries.entries) {
    if (entry.value == "English") {
      print("English speaking country: ${entry.key}");
    }
  }

  Map<String, String> colors = {
    "red": "primary",
    "green": "secondary",
    "blue": "primary"
  };

  colors.forEach((key, value) => print("Color: $key, Category: $value"));

  int rows = 5;
  for (int i = 1; i <= rows; i++) {
    // Print leading spaces
    for (int j = 1; j <= rows - i; j++) {
      print(" ");
    }
    // Print stars for the upper half
    for (int j = 1; j <= 2 * i - 1; j++) {
      print("*");
    }
    print("\n");
  }
  for (int i = rows - 1; i >= 1; i--) {
    // Print leading spaces
    for (int j = 1; j <= rows - i; j++) {
      print(" ");
    }
    // Print stars for the lower half
    for (int j = 1; j <= 2 * i - 1; j++) {
      print("*");
    }
    print("\n");
  }
}
