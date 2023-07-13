import 'package:subway_clean/data/api/subway_api.dart';
import 'package:subway_clean/data/mapper/station_mapper.dart';
import 'package:subway_clean/domain/model/station.dart';
import 'package:subway_clean/domain/repository/subway_station_repositoty.dart';

class SubwayStationRepositoryImpl implements SubwayStationRepository {
  final _api = SubwayApi();

  @override
  Future<List<Station>> getSubwayStationList(String stationName) async {
    final result = await _api.getSubway(stationName);

    if (result.realtimeArrivalList == null) {
      return [];
    }

    return result.realtimeArrivalList!.map((e) => e.toStation()).toList();
  }
}
