import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';
part 'station.g.dart';

@freezed
class Station with _$Station {
  factory Station({
    required String subwayLineId,
    required String trainLineName,
    required String subwayName,
    required String arvlTime,
    required String arvlMsgFirst,
    required String arvlMsgSecond,
    required String arvlCode,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
}
