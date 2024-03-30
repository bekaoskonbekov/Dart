// void main(List<String> args) {
//   // Create a Song object
//   Song currentSong = Song("Bohemian Rhapsody", "Queen");
//   currentSong.play();
//   currentSong._currentPosition = 120;

//   currentSong.pause();
//   int currentPos = currentSong.getCurrentPosition();
//   print("Current position: $currentPos seconds");

//   currentSong.resime();
// }

// class Song {
//   String title;
//   String artist;
//   int _currentPosition = 0;

//   Song(this.title, this.artist);

//   void play() {
//     _currentPosition = 0;
//     print('Playing $title by $artist');
//   }

//   void pause() {
//     print('Paused $title by $_currentPosition');
//   }

//   void resime() {
//     if (_currentPosition > 0) {
//       print("Resuming '$title' at $_currentPosition seconds");
//     } else {
//       print("Resuming '$title' at 0 seconds");
//     }
//   }

//   int getCurrentPosition() {
//     return _currentPosition;
//   }
// }

// class HttpClient {
//   final String _baseUrl; // Private final field for the base URL
//   String? _authToken; // Private field for the authentication token (nullable)

//   // Constructor with required base URL
//   HttpClient(this._baseUrl);

//   // Public method to set the authentication token (optional)
//   void setAuthToken(String? token) {
//     _authToken = token;
//   }

//   // Public method to perform a GET request with optional headers
//   Future<String> get(String path, {Map<String, String>? headers}) async {
//     // Construct the full URL
//     final url = Uri.parse("$_baseUrl/$path");

//     // Create a new HttpClient instance (avoids sharing the connection)
//     final client =  HttpClient(_baseUrl);

//     // Prepare the request
//     final request = await client.getUrl(url);
//     request.headers.addAll(headers ?? {});

//     // Add authentication token if available
//     if (_authToken != null) {
//       request.headers.set('Authorization', 'Bearer $_authToken');
//     }

//     // Send the request and get the response
//     final response = await request.close();
//     final responseBody = await response.transform(utf8.decoder).join();

//     return responseBody;
//   }
// }

// void main() async {
//   // Create an HttpClient instance with the base URL
//   final client = HttpClient("https://api.example.com");

//   // Set the authentication token (optional)
//   client.setAuthToken("your_secret_token");

//   // Make a GET request to a specific path with headers
//   final response = await client.get(
//       "/users/123",
//       headers: {"Content-Type": "application/json"},
//   );

//   print(response); // Prints the response body from the API
// }

class Shape {
  // Private fields to store position and dimensions
  double _x;
  double _y;
  double _width;
  double _height;

  // Constructor with position and dimensions
  Shape(this._x, this._y, this._width, this._height);

  // Public method to get the area (abstract, subclasses must implement)
  double getArea() {
    throw UnimplementedError("Area calculation not implemented in Shape");
  }

  // Public methods to access position and dimensions indirectly (read-only)
  double getX() {
    return _x;
  }

  double getY() {
    return _y;
  }

  double getWidth() {
    return _width;
  }

  double getHeight() {
    return _height;
  }

  // Public method to move the shape (without revealing internal coordinates)
  void move(double dx, double dy) {
    _x += dx;
    _y += dy;
  }
}

class Circle extends Shape {
  // Circle-specific constructor (calls the Shape constructor)
  Circle(double x, double y, double radius)
      : super(x, y, radius * 2, radius * 2);

  @override
  double getArea() {
    final radius = getWidth() / 2;
    return 3.14 * radius * radius;
  }
}

void main() {
  // Create a Circle object
  Circle myCircle = Circle(50.0, 70.0, 25.0);

  // Get the area using the public method (without direct access to private fields)
  double circleArea = myCircle.getArea();
  print("Circle area: $circleArea");

  // Move the circle using the public method
  myCircle.move(20.0, 10.0);

  // Get the new position using public methods (indirect access)
  double newX = myCircle.getX();
  double newY = myCircle.getY();
  print("Circle moved to: ($newX, $newY)");
}
