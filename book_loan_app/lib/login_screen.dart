import 'package:book_loan_app/liberaryManager.dart';
import 'package:book_loan_app/register_screen.dart';
import 'package:flutter/material.dart';

import 'Model/book.dart';
import 'Model/member.dart';
import 'borrowed_books_screen.dart';

class LoginScreen extends StatefulWidget {
  final LibraryManager libraryManager;

  const LoginScreen({super.key, required this.libraryManager});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController bookTitleController = TextEditingController();
  TextEditingController bookAuthorController = TextEditingController();

  void login() {
    String name = nameController.text;

    // 등록된 회원 목록에서 입력한 이름과 일치하는 회원 찾기
    Member? member = widget.libraryManager.getMemberByName(name);

    if (member != null) {
      // 회원이 존재하면 로그인 처리
      widget.libraryManager.setLoggedInMember(member);

      // 대출 목록 화면으로 이동
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              BorrowedBooksScreen(libraryManager: widget.libraryManager),
        ),
      );
    } else {
      // 회원이 존재하지 않는 경우에는 알림 표시
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('로그인 실패'),
          content: Text('입력한 이름으로 등록된 회원이 없습니다.'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('확인'),
            ),
          ],
        ),
      );
    }
  }

  void navigateToRegisterScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            RegisterScreen(libraryManager: widget.libraryManager),
      ),
    );
  }

  void registerBook() {
    String title = bookTitleController.text;
    String author = bookAuthorController.text;

    // 새로운 책 객체 생성
    Book newBook = Book(
      title: title,
      author: author,
      publishDate: DateTime.now(),
      isAvailable: true,
    );

    // 도서관 관리자에게 책 등록 요청
    widget.libraryManager.registerBook(newBook);

    // 책 등록 후 입력 필드 초기화
    bookTitleController.clear();
    bookAuthorController.clear();

    // 책 등록 후 알림 표시
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('책 등록'),
        content: Text('책이 성공적으로 등록되었습니다.'),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('확인'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: '이름'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: login,
              child: Text('로그인'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: navigateToRegisterScreen,
              child: Text('회원 등록'),
            ),
            SizedBox(height: 20),
            Text(
              '책 등록',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: bookTitleController,
              decoration: InputDecoration(labelText: '책 제목'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: bookAuthorController,
              decoration: InputDecoration(labelText: '저자'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: registerBook,
              child: Text('책 등록'),
            ),
          ],
        ),
      ),
    );
  }
}
