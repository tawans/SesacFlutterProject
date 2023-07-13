// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Station _$$_StationFromJson(Map<String, dynamic> json) => _$_Station(
      subwayLineId: json['subwayLineId'] as String,
      trainLineName: json['trainLineName'] as String,
      subwayName: json['subwayName'] as String,
      arvlTime: json['arvlTime'] as String,
      arvlMsgFirst: json['arvlMsgFirst'] as String,
      arvlMsgSecond: json['arvlMsgSecond'] as String,
      arvlCode: json['arvlCode'] as String,
    );

Map<String, dynamic> _$$_StationToJson(_$_Station instance) =>
    <String, dynamic>{
      'subwayLineId': instance.subwayLineId,
      'trainLineName': instance.trainLineName,
      'subwayName': instance.subwayName,
      'arvlTime': instance.arvlTime,
      'arvlMsgFirst': instance.arvlMsgFirst,
      'arvlMsgSecond': instance.arvlMsgSecond,
      'arvlCode': instance.arvlCode,
    };
