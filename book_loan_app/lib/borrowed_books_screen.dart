import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Model/book.dart';
import 'liberary_manager.dart';

class BorrowedBooksScreen extends StatelessWidget {
  final LibraryManager libraryManager;

  BorrowedBooksScreen({required this.libraryManager});

  @override
  Widget build(BuildContext context) {
    List<Book> borrowedBooks = libraryManager.getSortedBorrowedBooks();
    List<Book> availableBooks = libraryManager.availableBooks;

    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context); // 로그인 창으로 돌아가기
        return false; // 뒤로 가기 동작을 수행하지 않음
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('내 도서 대출 관리'),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Text(
              '대출한 책',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: borrowedBooks.length,
                itemBuilder: (context, index) {
                  Book book = borrowedBooks[index];
                  String formattedPublishDate =
                      DateFormat('yyyy/MM/dd').format(book.publishDate);

                  return ListTile(
                    title: Text(book.title),
                    subtitle: Text(book.author),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            libraryManager.extendDueDate(book);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BorrowedBooksScreen(
                                  libraryManager: libraryManager,
                                ),
                              ),
                            );
                          },
                          child: Text('연장'),
                        ),
                        SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {
                            libraryManager.returnBook(book);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BorrowedBooksScreen(
                                  libraryManager: libraryManager,
                                ),
                              ),
                            );
                          },
                          child: Text('반납'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              '대출 가능한 책',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: availableBooks.length,
                itemBuilder: (context, index) {
                  Book book = availableBooks[index];
                  String formattedPublishDate =
                      DateFormat('yyyy/MM/dd').format(book.publishDate);

                  return ListTile(
                    title: Text(book.title),
                    subtitle: Text(book.author),
                    trailing: ElevatedButton(
                      onPressed: () {
                        libraryManager.borrowBook(
                            book, libraryManager.loggedInMember!);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BorrowedBooksScreen(
                              libraryManager: libraryManager,
                            ),
                          ),
                        );
                      },
                      child: Text('대출'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
