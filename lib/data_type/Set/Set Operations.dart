void main(List<String> args) {
  Set<String> fruits = {"apple", "banana", "orange"};
  Set<String> vegetables = {"potato", "carrot", "tomato"};
  var result = fruits.union(vegetables);
  print(result);
  Set<int> evenNumbers = {2, 4, 6};
  Set<int> multiplesOfThree = {3, 6, 9};

  var inteResult = evenNumbers.intersection(multiplesOfThree);
  print(inteResult);

  Set<String> colors = {"red", "green", "blue"};
  Set<String> excludedColors = {"green", "yellow"};

  Set<String> remainingColors = colors.difference(excludedColors);

  print(remainingColors);
}
