// void main(List<String> args) {
//   var account = SavingAccount();
//   account.deposit(200);
//   account._interestRate = 0.5;
//   account.addInsert();
//   print(account.balance);

//   var account2 = BankAccount(balance: 100);
//   print(account2);
//   var account3 = SavingAccount(interestRate: 200);
//   print("$account2 $account3");
// }

// class BankAccount {
//   double _balance = 0;
//   BankAccount({double balance = 0}) : _balance = balance;
//   deposit(double amount) {
//     _balance += amount;
//   }

//   withdraw(double amount) {
//     if (amount <= _balance) {
//       _balance -= amount;
//       return true;
//     }
//     return false;
//   }

//   double get balance {
//     return _balance;
//   }

//   @override
//   String toString() {
//     return 'Balance: $_balance';
//   }
// }

// class SavingAccount extends BankAccount {
//   double _interestRate = 0;

//   SavingAccount({double balance = 0, double interestRate = 0})
//       : _interestRate = interestRate,
//         super(balance: balance);
//   double get interestRate {
//     return _interestRate;
//   }

//   set interestRate(double value) {
//     if (value > 0) {
//       _interestRate = value;
//     }
//   }

//   addInsert() {
//     double interest = _balance * _interestRate;
//     this._balance += interest;
//   }

//   @override
//   String toString() {
//     return super.toString() + "The interest rate is ${interestRate} ";
//   }
// }

// void main(List<String> args) {
//   var animal = Animal("Dod");
//   animal.eat();
// }

// class Animal {
//   String name;
//   Animal(this.name);
//   void eat() {
//     print('Animal $name eat');
//   }
// }

// class Dog extends Animal {
//   Dog(String name) : super(name);
//   void speak() {
//     print('Dog $name speak');
//   }
// }
// void main(List<String> args) {
//   var animal = Dog();
//   animal.speak();
// }

// class Animal {
//   void speak() {
//     print('Animal speak');
//   }
// }

// class Dog extends Animal {
//   @override
//   void speak() {
//     super.speak();
//     print('Dog speak');
//   }
// }

// void main(List<String> args) {
//   var dog = Dog("Buddy", "Dog");
//   dog.speak();
//   dog.eat();
// }

// class Animal {
//   String name;
//   Animal(this.name);
//   void eat() {
//     print('Animal $name eat');
//   }
// }

// class Dog extends Animal {
//   String bread;
//   Dog(this.bread, String name) : super(name);
//   void speak() {
//     print('Dog $name ($bread) speak');
//   }
// }
// void main() {
//   var dog = Dog();
//   var cat = Cat();

//   dog.speak(); // Output: Dog barks
//   cat.speak(); // Output: Cat meows
// }

// class Animal {}

// class Dog extends Animal {
//   @override
//   void speak() {
//     print("Dog  bars");
//   }
// }

// class Cat extends Animal {
//   @override
//   void speak() {
//     print("Cat  meows");
//   }
// }

// class Box<T> {
//   T value;

//   Box(this.value);

//   T getValue() {
//     return value;
//   }
// }

// void main() {
//   var box = Box<int>(42);
//   String stringValue = box.getValue(); // This will cause a runtime error
// }
