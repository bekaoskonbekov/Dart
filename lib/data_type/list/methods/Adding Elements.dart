void main(List<String> args) {
  List<String> list1 = ["apple", "orange", "armut"];
  list1.add("banana");
  list1.addAll(["chery", "12"]);
  print(list1);

  List<int> list2 = [1, 2, 3, 4, 5, 6];
  list2.insert(0, 4);
  print(list2);

  List<String> day = ["Monday", "Thursday", "Friday"];
  var day2 = ['Tuesday', "Sunday"];
  day.insertAll(1, day2);
  print(day);
}
