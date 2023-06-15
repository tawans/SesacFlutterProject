import 'Model/book.dart';
import 'Model/member.dart';
import 'package:intl/intl.dart';

class LibraryManager {
  List<Member> members = [];
  Member? loggedInMember; // 현재 로그인된 회원
  List<Book> books = [];
  List<Book> borrowedBooks = [];
  List<Book> availableBooks = [];

  void addMember(Member member) {
    members.add(member);
  }

  void removeMember(Member member) {
    members.remove(member);
  }

  void addBook(Book book) {
    books.add(book);
    availableBooks.add(book);
  }

  void borrowBook(Book book, Member member) {
    borrowedBooks.add(book);
    availableBooks.remove(book);
    book.borrowedBy = member;
    book.borrowedDate = DateTime.now();
    book.returnDate = book.borrowedDate?.add(Duration(days: 14));
  }

  void returnBook(Book book) {
    borrowedBooks.remove(book);
    availableBooks.add(book);
    book.borrowedBy = null;
    book.borrowedDate = null;
    book.returnDate = null;
  }

  void extendDueDate(Book book) {
    if (book.returnDate != null) {
      book.returnDate = book.returnDate!.add(Duration(days: 7));
    }
  }

  List<Book> getSortedBorrowedBooks() {
    borrowedBooks.sort((a, b) => a.returnDate!.compareTo(b.returnDate!));
    return borrowedBooks;
  }

  List<Book> getRecentBooks() {
    books.sort((a, b) => b.publishDate.compareTo(a.publishDate));
    return books;
  }

  List<List<dynamic>> exportData() {
    List<List<dynamic>> rows = [];
    rows.add([
      'Title',
      'Author',
      'Publish Date',
      'Borrowed by',
      'Borrowed Date',
      'Return Date'
    ]);
    for (Book book in books) {
      String borrowedBy = book.borrowedBy != null ? book.borrowedBy!.name : '';
      String borrowedDate = book.borrowedDate != null
          ? DateFormat('yyyy/MM/dd').format(book.borrowedDate!)
          : '';
      String returnDate = book.returnDate != null
          ? DateFormat('yyyy/MM/dd').format(book.returnDate!)
          : '';
      rows.add([
        book.title,
        book.author,
        DateFormat('yyyy/MM/dd').format(book.publishDate),
        borrowedBy,
        borrowedDate,
        returnDate
      ]);
    }
    return rows;
  }

  void importData(List<List<dynamic>> data) {
    for (int i = 1; i < data.length; i++) {
      String title = data[i][0];
      String author = data[i][1];
      DateTime publishDate = DateFormat('yyyy/MM/dd').parse(data[i][2]);
      Member? borrowedBy = null;
      DateTime? borrowedDate = null;
      DateTime? returnDate = null;
      if (data[i][3] != '') {
        String borrowedByName = data[i][3];
        borrowedBy =
            members.firstWhere((member) => member.name == borrowedByName);
      }
      if (data[i][4] != '') {
        borrowedDate = DateFormat('yyyy/MM/dd').parse(data[i][4]);
      }
      if (data[i][5] != '') {
        returnDate = DateFormat('yyyy/MM/dd').parse(data[i][5]);
      }
      Book book = Book(
          title: title,
          author: author,
          publishDate: publishDate,
          borrowedBy: borrowedBy,
          borrowedDate: borrowedDate,
          returnDate: returnDate);
      books.add(book);
      if (borrowedBy != null) {
        borrowedBooks.add(book);
      } else {
        availableBooks.add(book);
      }
    }
  }

  Member? getMemberByName(String name) {
    for (Member member in members) {
      if (member.name == name) {
        return member;
      }
    }
    return null; // 일치하는 회원이 없을 경우 null 반환
  }

  void setLoggedInMember(Member member) {
    loggedInMember = member;
  }

  void registerBook(Book book) {
    books.add(book);
    availableBooks.add(book);
  }
}
