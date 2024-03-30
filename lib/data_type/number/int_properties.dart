void main(List<String> args) {
  // ------------------hashCode
  int num1 = 42;
  int num = num1.hashCode;
  print(num);

  // =-----------------------isEven

  int num2 = 32;
  print(num2.isEven);

  int num3 = 42;
  print(num3.isOdd);

  int num4 = 21;
  print(num4.isFinite);

  int num5 = 21;
  print(num5.isInfinite);

  int num6 = 42;
  print(num6.toRadixString(2));
  int num7 = -212;
  print(num7.sign);

  int num8 = -214;
  print(num8.toSigned(8));

  int num9 = 211;
  print(num9.toStringAsExponential());
}
