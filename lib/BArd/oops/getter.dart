// void main(List<String> args) {
//   var myClass = MyClass();
//   int myIndex = myClass._privateField;
//   print(myIndex);

// }

// class MyClass {
//   int _privateField = 0;
//   dynamic get private => _privateField;

//   set publicProperty(int value) {
//     if (value > 0) {
//       _privateField = value;
//     } else {
//       throw ArgumentError("value must be");
//     }
//   }
// }

void main(List<String> args) {
  UserProfile userProfile = UserProfile();
  try {
    userProfile._firstName = 'd';
  } catch (e) {
    print("Errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr");
  }
  userProfile._firstName = "John";
  userProfile._lastName = "Doe";
  print(userProfile._fullName);
}

class UserProfile {
  late String _firstName;
  late String _lastName;
  late String _fullName;

  String get firstName => _firstName;
  set firstName(String name) {
    if (name.isEmpty) {
      throw ArgumentError(" name must be empty");
    }
    _firstName = name;
  }

  String get lastName => _lastName;
  set lastName(String name) {
    if (name.isEmpty) {
      throw ArgumentError(" name must be empty");
    }
    _lastName = name;
  }

  // Getter for full name (computed property based on private fields)
  String get fullName {
    if (_fullName == null) {
      _fullName = "$_firstName $_lastName";
    }
    return _fullName;
  }

  updateFullName() {
    _fullName = null!;
  }
}
