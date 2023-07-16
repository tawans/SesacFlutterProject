import 'package:dio/dio.dart';
import 'package:exchange_rate/data/data_source/dto/exchange_result_dto.dart';

class ExchangeResultApi {
  final dio = Dio();

  final baseUrl = 'https://v6.exchangerate-api.com/v6/';
  final apiKey = 'b50205ccf5420e996e486688';

  Future<ExchangeResultDto> getExchangeRate(String query) async {
    //void getExchangeRate(String query) async {
    final url = '$baseUrl$apiKey/latest/$query';

    final Response response = await dio.get(url);
    //final http.Response response = await http.get(Uri.parse(url));
    //Map<String, dynamic> jsonString = jsonDecode(response.body);
    //Map<String, dynamic> jsonString = response.data;
    return ExchangeResultDto.fromJson(response.data);
  }
}
