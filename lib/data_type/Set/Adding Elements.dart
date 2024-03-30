void main(List<String> args) {
  Set<String> str1 = {"Alice", "Bob", "Peter"};
  str1.add("John");
  print(str1);

  Set<int> num1 = {1, 2, 3, 4};
  List<int> num2 = [5, 6];
  num1.addAll(num2);
  print(num1);
}
