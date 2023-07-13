import 'package:subway_clean/core/result.dart';
import 'package:subway_clean/domain/model/station.dart';
import 'package:subway_clean/domain/repository/subway_station_repositoty.dart';

class GetStationsUseCase {
  final SubwayStationRepository _repository;

  GetStationsUseCase(this._repository);

  Future<Result<List<Station>>> execute(String StationName) async {
    try {
      final Stations = await _repository.getSubwayStationList(StationName);
      return Result.success(Stations.toList());
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
