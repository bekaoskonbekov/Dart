// // void main(List<String> args) {
// //   var basicTask =
// //       Task("Finish report ", DateTime.now().add(Duration(seconds: 2)));
// //   var ditailTask = Task.withDescription("Buy groseries", 'Milk, brad, eggs',
// //       DateTime.now().add(Duration(seconds: 3)));
// //   print(basicTask.title);
// //   print(ditailTask.description);
// //   basicTask.markComplate();
// //   ditailTask.markComplate();
// // }

// // class Task {
// //   String title;
// //   String? description;
// //   DateTime dueDate;
// //   Task(this.title, this.dueDate);

// //   Task.withDescription(this.title, this.description, this.dueDate);

// //   markComplate() {
// //     print('Task: $title marked compalted');
// //   }
// // }

// // void main(List<String> args) {
// //   User user = User.withDetails("test@example.com", 'Bob');
// //   User user2 = User.fromName("Alice");
// //   user.show();
// //   user2.show();
// // }

// // class User {
// //   String name;
// //   String email;
// //   User.withDetails(this.email, this.name);

// //   User.fromName(this.name, {this.email = ""});

// //   show() {
// //     print("Name: $name");
// //     print("Email: $email");
// //   }
// // }

void main(List<String> args) {
  var voidProduct = Product("T-short", 199, 10.0);
  voidProduct.displayInfo();
  try {
    var voidProduct2 = Product("dd", 15, -4.0);
    voidProduct2.displayInfo();
  } catch (e) {
    print(e);
  }
}

class Product {
  String name;
  int stock;
  double price;
  Product(this.name, this.stock, this.price) {
    if (name.isEmpty) {
      throw ArgumentError("name is empty");
    }
    if (stock < 0) {
      throw ArgumentError("stock is less than 0");
    }
    if (price < 0) {
      throw ArgumentError("price is less than 0");
    }
  }
  void displayInfo() {
    print("Name: $name");
    print("Stock: $stock");
    print("Price: $price");
  }
}

// void main(List<String> args) {
//   Product myProduct = Product("T-Shirt", 20, 19.99);
//   print("Product name: ${myProduct.name}"); // Prints "T-Shirt"
//   // myProduct.price = -10.0; 
//   // try {
//   //   myProduct.price = 25.50;
//   // } catch (error) {
//   //   print(error); // Won't print, price is valid
//   // }
//   print("New price: ${myProduct.price}"); 
//   myProduct.stockLevel = 5;
//   print("Stock level (after clamping): ${myProduct.stock}");
//   if (myProduct.deducStok(5)) {
//     print("Stock deducted successfully. Remaining stock: ${myProduct.stock}");
//   } else {
//     print("Insufficient stock!");
//   }
// }

// class Product {
//   String _name;
//   int _stock;
//   double _price;

//   Product(this._name, this._stock, this._price);

//   String get name => _name;
//   int get stock => _stock;
//   double get price => _price;

//   set price(double newPrice) {
//     if (newPrice >= 0) {
//       _price = newPrice;
//     } else {
//       throw ArgumentError("Price cannot be negative");
//     }
//   }

//   set stockLevel(int newStock) {
//     _stock = newStock;
//     _stock = newStock.clamp(0, 100);
//   }

//   bool deducStok(int quantity) {
//     if (_stock >= quantity) {
//       _stock -= quantity;
//       return true;
//     }
//     return false;
//   }
// }
