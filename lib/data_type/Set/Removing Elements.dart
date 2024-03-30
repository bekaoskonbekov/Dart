void main(List<String> args) {
  Set<int> number1 = {1, 2, 3, 4, 5, 6};
  List<int> number2 = [1, 3, 5];
  number1.removeAll(number2);
  print(number1);
  number1.clear();
  print(number1);
}
