// BankAccount class
class BankAccount {
  String accountNumber;
  String accountOwner;
  double balance;

  BankAccount(this.accountNumber, this.accountOwner, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('$amount deposited successfully.');
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('$amount withdrawn successfully.');
    } else {
      print('Insufficient funds.');
    }
  }

  double getBalance() {
    return balance;
  }

  void displayAccountInfo() {
    print('Account Number: $accountNumber');
    print('Account Owner: $accountOwner');
    print('Current Balance: $balance');
  }
}

// Book class
class Book {
  String title;
  String author;
  int year;
  int pageCount;

  Book(this.title, this.author, this.year, this.pageCount);

  void displayBookInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Year: $year');
    print('Page Count: $pageCount');
  }
}

// Library class
class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book added successfully.');
  }

  void removeBook(Book book) {
    books.remove(book);
    print('Book removed successfully.');
  }

  void displayAllBooks() {
    if (books.isEmpty) {
      print('Library is empty.');
    } else {
      for (var book in books) {
        book.displayBookInfo();
        print('-----------------------');
      }
    }
  }
}

void main() {
  // Creating bank accounts
  var account1 = BankAccount('123456', 'John Doe', 1000.0);
  var account2 = BankAccount('654321', 'Jane Smith', 500.0);

  // Depositing and withdrawing money
  account1.deposit(500.0);
  account2.withdraw(200.0);

  // Displaying account information
  account1.displayAccountInfo();
  account2.displayAccountInfo();

  // Creating books
  var book1 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 180);
  var book2 = Book('To Kill a Mockingbird', 'Harper Lee', 1960, 281);

  // Creating library
  var library = Library();

  // Adding books to the library
  library.addBook(book1);
  library.addBook(book2);

  // Displaying all books in the library
  library.displayAllBooks();
}
