// void main(List<String> args) {
//   var person = Person("John", 10);
//   print("Name:  ${person.name}");
//   print("Age:  ${person.age}");
//   var person2 = Person2("John", 10);
//   print("Name:  ${person2.name}");
//   print("Age:  ${person2.age}");
// }

// class Person {
//   String _name;
//   int _age;
//   Person(this._name, this._age);
//   String get name => _name;
//   int get age => _age;
// }

// class Person2 {
//   String name;
//   int age;
//   Person2(this.name, this.age);
// }

// void main(List<String> args) {
//   var rectangle = Rectangel(12, 34);
//   print("Area: ${rectangle.area}");
//   print("Perimeter: ${rectangle.perimeter}");
// }

// class Rectangel {
//   double _width;
//   double _length;
//   Rectangel(this._width, this._length);
//   double get area => _width * _length;
//   double get length => _length * _width;
//   double get perimeter => 2 * (_length * _width);
// }

// void main(List<String> args) {
//   var circle = Circle(12);
//   print("Area: ${circle.area}");
//   print("Perimeter: ${circle.perimeter}");
// }

// class Circle {
//   double _radius;
//   Circle(this._radius);
//   double get area => _radius;
//   double get perimeter => 3.14 * _radius * _radius;
// }
// void main(List<String> args) {
//   var temperature = Temperature(23.1);
//   print("Temperature: ${temperature.celsius}");
//   print("Temperature: ${temperature.fahrenheit}");
// }

// class Temperature {
//   double _celsius;
//   Temperature(this._celsius);
//   double get celsius => _celsius;
//   double get fahrenheit => _celsius * 9 / 5 + 32;
// }

// void main(List<String> args) {
//   var shop = ShoppingCart();
//   shop.addItem("Apple");
//   shop.addItem("Orange");
//   shop.addItem("Mango");
//   print(shop._items);
//   shop.removeItem("Mango");
//   print(shop._items);
// }

// class ShoppingCart {
//   List<String> _items = [];

//   void addItem(String item) {
//     _items.add(item);
//   }

//   void removeItem(String item) {
//     _items.remove(item);
//   }

//   get items => _items;
// }

// void main(List<String> args) {
//   var shop = ShoppingCart();
//   print(shop.items);
//   shop.addItem("Apple");
//   print(shop.items);
// }

// class ShoppingCart {
//   List<String> _items = [];
//   void addItem(String item) {
//     _items.add(item);
//   }

//   void removeItem(String item) {
//     _items.remove(item);
//   }

//   get items {
//     if (_items.isEmpty) {
//       print("Cart is empty in the cart");
//     } else {
//       return _items;
//     }
//   }
// }

void main(List<String> args) {
  var bank = BankAccount(100);
  print("Balance: ${bank.balance}");
  var invalidBalance = BankAccount(-100);
  print("Balance: ${invalidBalance.balance}");
}

class BankAccount {
  double _balance;
  BankAccount(this._balance);
  double get balance {
    if (_balance < 0) {
      print("Invalid balance");
    }
    return _balance;
  }
}
