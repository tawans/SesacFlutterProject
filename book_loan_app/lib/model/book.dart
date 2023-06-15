import 'member.dart';

// 책 정보 모델
class Book {
  String title;
  String author;
  DateTime publishDate;
  Member? borrowedBy;
  DateTime? borrowedDate;
  DateTime? returnDate;
  DateTime? dueDate; // 추가된 필드: 반납 기한
  bool isAvailable; // 추가된 필드: 대출 가능 여부

  Book({
    required this.title,
    required this.author,
    required this.publishDate,
    this.borrowedBy,
    this.borrowedDate,
    this.returnDate,
    this.dueDate,
    this.isAvailable = true, // 기본값: 대출 가능
  });
}
