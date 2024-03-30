// void main(List<String> args) {
//   String? str = "Hello";
//   int leng = str!.length;
//   print(leng);
// }
// void main(List<String> args) {
//   String? str = null;
//   String result = str != null ? str.toUpperCase() : "Default";
//   print(result);
// }

// void main(List<String> args) {
//   List<int>? numbers = [1, 2, 3, 4, 5, 6, 7];
//   int length = numbers![0];
//   print(length);
// }

// void main(List<String> args) {
//   Person? person;
//   String? name = person?.address!.city!;
//   print(name);
// }

// class Person {
//   Address? address;
// }

// class Address {
//   String? city;
// }
// void main(List<String> args) {
//   Address? address;
//   var userName = address?.person.name = "John";
//   String? names = address!.person.name;
//   print(userName);
// }

// class Person {
//   String? name;

//   Person(this.name);
// }

// class Address {
//   final String city;
//   final Person person;

//   Address({required this.city, required this.person});
// }

// class Person {
//   String? name;
// }

// void main() {
//   Person? person;
//   person = Person()..name = "John";
//   print(person!.name);
// }

// class Address {
//   String? city;
// }

// class Person {
//   Address? address;
// }

// void main() {
//   Person? person = Person()..address = Address()..city = "Los Angeles";
//   print(person!.address!.city); // Output: Los Angeles
// }

void main(List<String> args) {
  var json = {"x": 1, "y": 2};
  Point point = Point.fromJson(json);
  print("X: ${point.x} \n y: ${point.y}");
}

class Point {
  int x;
  int y;
  Point(this.x, this.y);

  factory Point.fromJson(Map<String, dynamic> json) {
    return Point(json['x'], json['y']);
  }
}
