import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:subway_clean/data/dto/subway_result_dto.dart';

class SubwayApi {
  Future<SubwayResultDto> getSubway(String query) async {
    const totalNum = 5;
    const baseUrl =
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/$totalNum/';
    final response = await http.get(Uri.parse('$baseUrl/$query'));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonString = jsonDecode(response.body);
      return SubwayResultDto.fromJson(jsonString);
    } else {
      throw Exception('Failed to load Subway');
    }
  }
}
