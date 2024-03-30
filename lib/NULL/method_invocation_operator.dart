void main(List<String> args) {
  String? nullable = "Hello";
  String? result = nullable?.toUpperCase();
  print(result);
  Person? person;
  String? result1 = person?.name;
  print(result1);
  String personName = person?.getName() ?? "Unknown";
  print(personName);
  Address? address;
  String? result2 = address?.city ?? "Unknown";
  person
    ?..name = "John"
    ..name = person.name ?? "Unknown";
  print(person?.name);
}

class Person {
  String? name;
  String getName() => name ?? "John";
  String? address;
}

class Address {
  String? city;
}
