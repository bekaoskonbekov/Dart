void main(List<String> args) {
  var carDiteil = CarDetail(100);
  var car = Car(carDiteil, "Honda", "Red");
  print(car.carDetail.ageOil);
  // print(car.huck());

  var readingsPage = ReadingPage(100, 350);
  var myBook = Book("Hulk", "Samsung", readingsPage);
  myBook.markPage(25);
  print(myBook.reading.currentPage);
}

class CarDetail {
  int ageOil;
  CarDetail(this.ageOil);
}

class Car {
  CarDetail carDetail;
  String name;
  String color;
  Car(this.carDetail, this.name, this.color);

  huck() {
    print("Beep Beep");
  }
}

class ReadingPage {
  int currentPage;
  int totalPage;
  ReadingPage(this.currentPage, this.totalPage);
}

class Book {
  String title;
  String author;
  ReadingPage reading;
  Book(this.title, this.author, this.reading);

  void markPage(int page) {
    reading.currentPage = page;
  }
}
