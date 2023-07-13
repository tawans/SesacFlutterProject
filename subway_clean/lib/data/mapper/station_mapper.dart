import 'package:subway_clean/data/dto/subway_result_dto.dart';
import 'package:subway_clean/domain/model/station.dart';

extension ToPhoto on RealtimeArrivalList {
  Station toStation() {
    return Station(
      subwayLineId: subwayId ?? '',
      trainLineName: trainLineNm ?? '',
      subwayName: statnNm ?? '',
      arvlTime: barvlDt ?? '',
      arvlMsgFirst: arvlMsg2 ?? '',
      arvlMsgSecond: arvlMsg3 ?? '',
      arvlCode: arvlCd ?? '',
    );
  }
}
