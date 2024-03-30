import 'dart:io';

// void main(List<String> args) {
//   var now = DateTime.now().toUtc();
//   var formatDate = HttpDate.format(now);
//   print("The current date is $formatDate");
// }

void main(List<String> args) {
  var now = DateTime.utc(2024, 3, 21, 15, 0, 0);
  var formatDate = HttpDate.format(now);
  print("The current date is $formatDate");

  var dateParse = HttpDate.parse(formatDate);
  print("The parsed date is $dateParse");
}
