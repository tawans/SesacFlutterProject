import 'dart:convert';

import 'package:clean_image_search/api_key.dart';
import 'package:clean_image_search/model/photo.dart';
import 'package:http/http.dart' as http;

class PixarbayApi {
  final baseUrl = 'https://pixabay.com/api/';
  final key = API_KEY;

  Future<List<Photo>> fetch(String query) async {
    final response = await http.get(
      Uri.parse('$baseUrl?key=$key&q=$query&image_type=photo'),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      Iterable hits = json['hits'];
      return hits.map((e) => Photo.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load photos');
    }
  }
}
