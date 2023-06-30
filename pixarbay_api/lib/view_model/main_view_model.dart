import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pixarbay_api/model/hits.dart';

class MainViewModel with ChangeNotifier {
  final String apiKey = '37894932-b159ca01f52ce0dcd4c47a6ef';
  final String baseUrl = 'https://pixabay.com/api/';
  final String query =
      '?key=37894932-b159ca01f52ce0dcd4c47a6ef&image_type=photo&pretty=true';

  Future<List<Hits>> getImages(searchText) async {
    final searchKeyword = searchText;

    final response = await http.get(Uri.parse(
        '$baseUrl?key=$apiKey&q=$searchKeyword&image_type=photo&pretty=true'));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      List<Hits> images =
          (jsonData['hits'] as List).map((e) => Hits.fromJson(e)).toList();

      return images;
    } else {
      throw Exception('Failed to load images');
    }
  }

  void onSearchSubmitted(String searchText) {
    getImages(searchText);
    notifyListeners();
  }
}
