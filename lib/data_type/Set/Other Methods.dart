void main(List<String> args) {
  Set<String> countries = {"Lyrfgyzstan", "Kazak", "Ozbek"};
  List<String> lustCount = countries.toList();
  print(lustCount);

  List<String> str1 = ["Alice", "Bob", "Peter"];
  var str2 = str1.toSet();
  print(str2);

  List<String> addCount = ["USA", ...countries];
  print(addCount);
}
