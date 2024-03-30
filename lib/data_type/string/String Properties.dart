void main(List<String> args) {
  String str1 = "Hello World";
  print(str1.length);

  String str2 = "";
  print(str2.isEmpty);
  String str3 = "";
  print(str3.isNotEmpty);
  String str4 = "Hello";
  print(str4.codeUnits);

  String str5 = "Hello World";
  print(str5.replaceAll("Hel", "WOrld"));
  print(str5.replaceFirst("H", "W"));

  String str6 = "Flutter Dart";
  print(str6.codeUnits);
  print(str6.codeUnitAt(2));
  print(str6.compareTo(""));
  // Original string containing a list of names separated by commas
  String namesString = "John, Alice, Bob, Mary, David";

  // Split the string into a list of names
  List<String> names = namesString.split(", ");

  // Convert each name to uppercase and trim whitespace
  List<String> formattedNames =
      names.map((name) => name.trim().toUpperCase()).toList();

  // Filter names starting with "J"
  List<String> filteredNames =
      formattedNames.where((name) => name.startsWith("J")).toList();

  // Join the filtered names into a single string separated by commas
  String filteredNamesString = filteredNames.join(", ");

  // Output the results
  print("Original names: $namesString");
  print("Formatted names: $formattedNames");
  print("Filtered names starting with 'J': $filteredNamesString");
}
