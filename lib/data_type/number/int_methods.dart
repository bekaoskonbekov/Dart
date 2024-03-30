void main(List<String> args) {
  num number1 = -43.5;
  print(number1.abs());

  num num2 = 43.4;
  print(num2.round());

  num num3 = 43.1;
  print(num3.ceil());
  num num4 = 43.2;
  print(num4.floor());

  num num5 = 54;
  print(num5.toDouble());

  num num6 = 43.9;
  print(num6.truncate());

  num num7 = 54.4;
  print(num7.toInt());

  num num8 = 10;
  num num9 = 8;
  print(num8.remainder(num9));

  num num10 = 43;
  print(num10.compareTo(num9));
}
