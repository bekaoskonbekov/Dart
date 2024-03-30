// void main(List<String> args) {
//   var userService = UserService();
//   userService.login("@example", "1323");
// }

// mixin Loging {
//   void log(String message) {
//     print("[LOG]: $message");
//   }
// }

// class UserService with Loging {
//   void login(String username, String password) {
//     log("[LOG]: $username  logged in with password: $password");
//   }
// }

// void main(List<String> args) {
//   var user = User("user@example.com", "password");
//   user.isValid();
// }

// mixin Validation {
//   bool isValidEmail(String email) {
//     if (email.contains("@")) {
//       print("[VALID]:");
//     }
//     return email.contains("@");
//   }

//   bool isValidPassword(String password) {
//     return password.length >= 6;
//   }
// }

// class User with Validation {
//   String email;
//   String password;

//   User(this.email, this.password);
//   bool isValid() {
//     return isValidEmail(email) && isValidPassword(password);
//   }
// }

// import 'dart:convert';

// void main() {
//   var user = User("John", 21);
//   var json = jsonEncode(user);
//   print(json);
// }

// mixin Ser {
//   Map<String, dynamic> toJson();

//   void fromJson(Map<String, dynamic> json) {
//     print(json);
//   }

//   String toJsonString() {
//     return json.encode(toJson());
//   }
// }

// class User with Ser {
//   final String name;
//   final int age;

//   User(this.name, this.age);
//   @override
//   Map<String, dynamic> toJson() {
//     return {"name": name, "age": age};
//   }
// }

// void main(List<String> args) {
//   var recurse = SecureResource();
//   recurse.authenticate("Bale", "");
//   recurse.access();
// }

// mixin Authentication {
//   bool isAuthenticated = false;
//   void authenticate(String username, String password) {
//     if (username.isNotEmpty && password.isNotEmpty) {
//       isAuthenticated = true;
//       print("Authenticated $username");
//     } else {
//       isAuthenticated = false;
//       print("Not authenticated");
//     }
//   }
// }

// class SecureResource with Authentication {
//   void access() {
//     if (isAuthenticated) {
//       print("Access granted");
//     } else {
//       print("Access denied");
//     }
//   }
// }
void main() {
  var dataService = DataService();
  print(dataService.fetchDataWithCache('key1'));
  print(dataService.fetchDataWithCache('key2'));
  print(dataService.fetchDataWithCache('key1'));
}

mixin Cache {
  Map<String, dynamic> _cache = {};
  void setValue(String key, dynamic value) {
    print('Setting value in cache for key: $key');
    _cache[key] = value;
  }

  dynamic getValue(String key) {
    if (_cache.containsKey(key)) {
      print("Cache hit for key: $key");
      return _cache[key];
    } else {
      print("Cache miss for key: $key");
      return null;
    }
  }
}

class DataService with Cache {
  dynamic fethcData(String key) {
    print("Fethc data for key: $key");
    return "DataService for key: $key";
  }

  dynamic fetchDataWithCache(String key) {
    var cachedValue = getValue(key);
    if (cachedValue != null) {
      return cachedValue;
    } else {
      var data = fethcData(key);
      return setValue(key, data);
    }
    return fethcData(key);
  }
}
