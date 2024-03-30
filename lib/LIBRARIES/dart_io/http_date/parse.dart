import 'dart:io';

void main(List<String> args) {
  var dateString = 'Wed, 21 Mar 2024 15:00:00 GMT';
  try {
    var dateTime = HttpDate.parse(dateString);
    print("Parsed date: $dateTime");

    var dateFormated = HttpDate.format(dateTime);
    print("Formatted date: $dateFormated");
  } on FormatException catch (e) {
    print(e);
  } catch (e) {}
}
