import 'package:subway_clean/domain/model/station.dart';

abstract interface class SubwayStationRepository {
  Future<List<Station>> getSubwayStationList(String stationName);
}


