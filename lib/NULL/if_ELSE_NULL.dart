// void main(List<String> args) {
//   String? nullable = null;
//   var nonNullable = nullable ?? " Hello World";
//   print(nonNullable);
// }

// void main(List<String> args) {
//   String? nullable = "Hello World";
//   var nonNullable = nullable ?? "Default World";
//   print(nonNullable);
// }

// void main(List<String> args) {
//   String? nullable;
//   var nonNullable = nullable ?? "Default World";
//   print(nonNullable);
// }

// void main(List<String> args) {
//   String? getNullable() {
//     return null;
//   }

//   String notNullable = getNullable() ?? "Default World";
//   print(notNullable);
// }
// void main(List<String> args) {
//   String? nullable = null;
//   int length = nullable?.length ?? -1;
//   print(length);
// }

// void main(List<String> args) {
//   String? nullable = null;
//   String? nullable2 = null;
//   String? nullable3 = "Hello World";
//   String? nullable4 = nullable ?? nullable2 ?? nullable3 ?? "Deffault Value";
//   print(nullable4);
// }

void main(List<String> args) {
  List<int>? length = null;
  List<int> nonNullable = length ?? [1, 2, 3];
  print(nonNullable);
}
