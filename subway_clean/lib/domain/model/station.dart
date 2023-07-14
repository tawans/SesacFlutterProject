import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';
part 'station.g.dart';

@freezed
class Station with _$Station {
  factory Station({
    required String subwayLineId, // 지하철 호선 ID
    //(1001:1호선, 1002:2호선, 1003:3호선, 1004:4호선, 1005:5호선 1006:6호선, 1007:7호선, 1008:8호선, 1009:9호선,
    //1061:중앙선1063:경의중앙선, 1065:공항철도, 1067:경춘선, 1075:수의분당선 1077:신분당선, 1092:우이신설선)
    required String trainLineName, // 지하철 호선 이름
    required String subwayName, // 지하철 역 이름
    required String arvlTime, // 도착 예정 시간
    required String arvlMsgFirst, // 첫번째 도착 메시지
    required String arvlMsgSecond, // 두번째 도착 메시지
    // 도착코드
    //(0:진입, 1:도착, 2:출발, 3:전역출발, 4:전역진입, 5:전역도착, 99:운행중)
    required String arvlCode,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
}
