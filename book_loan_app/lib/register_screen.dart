import 'package:book_loan_app/liberary_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Model/member.dart';

class RegisterScreen extends StatefulWidget {
  final LibraryManager libraryManager;

  RegisterScreen({required this.libraryManager});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  DateTime? birthDate;

  void registerMember() {
    String name = nameController.text;
    String address = addressController.text;
    String phoneNumber = phoneNumberController.text;

    // 새로운 멤버 생성
    Member member = Member(
      registrationDate: DateTime.now(),
      name: name,
      address: address,
      phoneNumber: phoneNumber,
      birthDate: birthDate,
    );

    // 라이브러리 관리자에 멤버 등록
    widget.libraryManager.addMember(member);

    // 회원 등록 후 이전 화면으로 돌아가기
    Navigator.pop(context);
  }

  // 생년월일 선택
  void selectBirthDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        birthDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원 등록'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: '이름'),
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(labelText: '주소'),
            ),
            TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(labelText: '연락처'),
            ),
            SizedBox(height: 10),
            Text(
              '생년월일',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: selectBirthDate,
              child: Text(
                birthDate != null
                    ? DateFormat('yyyy/MM/dd').format(birthDate!)
                    : '날짜 선택',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: registerMember,
              child: Text('회원 등록'),
            ),
          ],
        ),
      ),
    );
  }
}
