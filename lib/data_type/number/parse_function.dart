void main(List<String> args) {
  String strigInt = "42";
  int number = int.parse(strigInt);
  print(number);

  // FormatException

  String strNumber = "abs";
  try {
    int num = int.parse(strNumber);
    print(num);
  } catch (e) {
    print("Error: $e");
  }

  String strNumParse = "   42   ";
  int num2 = int.parse(strNumParse.trim());
  print(num2);

  String hexString = "1b";
  try {
    int num3 = int.parse(hexString, radix: 24);
    print(num3);
  } catch (e) {
    print("Error : $e");
  }
}
