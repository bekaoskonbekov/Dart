class Book {
  String title;
  String author;
  bool isAvailable;

  Book(this.title, this.author, this.isAvailable);

  // Borrow the book (if available)
  void borrow() {
    if (isAvailable) {
      isAvailable = false;
      print("Borrowed: $title by $author");
    } else {
      print("Sorry, '$title' is not available for borrowing.");
    }
  }

  // Return the book
  void returnBook() {
    isAvailable = true;
    print("Returned: $title by $author");
  }

  // Access information about the book
  void showInfo() {
    print("Title: $title");
    print("Author: $author");
    print("Available: $isAvailable");
  }
}

void main() {
  // Create Book objects
  Book book1 =
      Book("The Hitchhiker's Guide to the Galaxy", "Douglas Adams", false);
  Book book2 = Book("Pride and Prejudice", "Jane Austen", false);

  // Show book information
  book1.showInfo(); // Prints book1 details

  // Borrow book1 (if available)
  book1
      .borrow(); // Prints "Borrowed: The Hitchhiker's Guide to the Galaxy by Douglas Adams"

  // Try borrowing book1 again (shouldn't be available)
  book1
      .borrow(); // Prints "Sorry, 'The Hitchhiker's Guide to the Galaxy' is not available for borrowing."

  // Return book1
  book1
      .returnBook(); // Prints "Returned: The Hitchhiker's Guide to the Galaxy by Douglas Adams"

  // Show book information after return
  book1.showInfo(); // Prints updated availability information
}
