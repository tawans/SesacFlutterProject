import 'package:firebase_auth/firebase_auth.dart';

class DetailPostModel {
  String getEmail() {
    return FirebaseAuth.instance.currentUser?.email ?? '이메일 없음';
  }

  String getNickName() {
    return FirebaseAuth.instance.currentUser?.displayName ?? '이름 없음';
  }

  String getPhotoImageUrl() {
    return FirebaseAuth.instance.currentUser?.photoURL ??
        'https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20230509_8%2F1683606723689LRv72_JPEG%2F17634045607956527_1765356406.jpg&type=sc960_832';
  }
}
