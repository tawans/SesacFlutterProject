// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('http 통신 테스트', () async {
    var response = Uri.https(
        'http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty?serviceKey=YrMm40kaKY%2BjuCOAaU184u10aKLbvz1BdsvUhOc4%2BZ5U1IN4soZ67SRknKqn4LO7YB%2F0PGV%2FIZ0WLYC%2FD4DReg%3D%3D&returnType=json&numOfRows=100&pageNo=1&sidoName=서울&ver=1.0');
  });
}
