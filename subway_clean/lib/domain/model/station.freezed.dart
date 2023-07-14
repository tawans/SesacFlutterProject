// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Station _$StationFromJson(Map<String, dynamic> json) {
  return _Station.fromJson(json);
}

/// @nodoc
mixin _$Station {
  String get subwayLineId => throw _privateConstructorUsedError; // 지하철 호선 ID
//(1001:1호선, 1002:2호선, 1003:3호선, 1004:4호선, 1005:5호선 1006:6호선, 1007:7호선, 1008:8호선, 1009:9호선,
//1061:중앙선1063:경의중앙선, 1065:공항철도, 1067:경춘선, 1075:수의분당선 1077:신분당선, 1092:우이신설선)
  String get trainLineName => throw _privateConstructorUsedError; // 지하철 호선 이름
  String get subwayName => throw _privateConstructorUsedError; // 지하철 역 이름
  String get arvlTime => throw _privateConstructorUsedError; // 도착 예정 시간
  String get arvlMsgFirst => throw _privateConstructorUsedError; // 첫번째 도착 메시지
  String get arvlMsgSecond => throw _privateConstructorUsedError; // 두번째 도착 메시지
// 도착코드
//(0:진입, 1:도착, 2:출발, 3:전역출발, 4:전역진입, 5:전역도착, 99:운행중)
  String get arvlCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StationCopyWith<Station> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationCopyWith<$Res> {
  factory $StationCopyWith(Station value, $Res Function(Station) then) =
      _$StationCopyWithImpl<$Res, Station>;
  @useResult
  $Res call(
      {String subwayLineId,
      String trainLineName,
      String subwayName,
      String arvlTime,
      String arvlMsgFirst,
      String arvlMsgSecond,
      String arvlCode});
}

/// @nodoc
class _$StationCopyWithImpl<$Res, $Val extends Station>
    implements $StationCopyWith<$Res> {
  _$StationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subwayLineId = null,
    Object? trainLineName = null,
    Object? subwayName = null,
    Object? arvlTime = null,
    Object? arvlMsgFirst = null,
    Object? arvlMsgSecond = null,
    Object? arvlCode = null,
  }) {
    return _then(_value.copyWith(
      subwayLineId: null == subwayLineId
          ? _value.subwayLineId
          : subwayLineId // ignore: cast_nullable_to_non_nullable
              as String,
      trainLineName: null == trainLineName
          ? _value.trainLineName
          : trainLineName // ignore: cast_nullable_to_non_nullable
              as String,
      subwayName: null == subwayName
          ? _value.subwayName
          : subwayName // ignore: cast_nullable_to_non_nullable
              as String,
      arvlTime: null == arvlTime
          ? _value.arvlTime
          : arvlTime // ignore: cast_nullable_to_non_nullable
              as String,
      arvlMsgFirst: null == arvlMsgFirst
          ? _value.arvlMsgFirst
          : arvlMsgFirst // ignore: cast_nullable_to_non_nullable
              as String,
      arvlMsgSecond: null == arvlMsgSecond
          ? _value.arvlMsgSecond
          : arvlMsgSecond // ignore: cast_nullable_to_non_nullable
              as String,
      arvlCode: null == arvlCode
          ? _value.arvlCode
          : arvlCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StationCopyWith<$Res> implements $StationCopyWith<$Res> {
  factory _$$_StationCopyWith(
          _$_Station value, $Res Function(_$_Station) then) =
      __$$_StationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subwayLineId,
      String trainLineName,
      String subwayName,
      String arvlTime,
      String arvlMsgFirst,
      String arvlMsgSecond,
      String arvlCode});
}

/// @nodoc
class __$$_StationCopyWithImpl<$Res>
    extends _$StationCopyWithImpl<$Res, _$_Station>
    implements _$$_StationCopyWith<$Res> {
  __$$_StationCopyWithImpl(_$_Station _value, $Res Function(_$_Station) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subwayLineId = null,
    Object? trainLineName = null,
    Object? subwayName = null,
    Object? arvlTime = null,
    Object? arvlMsgFirst = null,
    Object? arvlMsgSecond = null,
    Object? arvlCode = null,
  }) {
    return _then(_$_Station(
      subwayLineId: null == subwayLineId
          ? _value.subwayLineId
          : subwayLineId // ignore: cast_nullable_to_non_nullable
              as String,
      trainLineName: null == trainLineName
          ? _value.trainLineName
          : trainLineName // ignore: cast_nullable_to_non_nullable
              as String,
      subwayName: null == subwayName
          ? _value.subwayName
          : subwayName // ignore: cast_nullable_to_non_nullable
              as String,
      arvlTime: null == arvlTime
          ? _value.arvlTime
          : arvlTime // ignore: cast_nullable_to_non_nullable
              as String,
      arvlMsgFirst: null == arvlMsgFirst
          ? _value.arvlMsgFirst
          : arvlMsgFirst // ignore: cast_nullable_to_non_nullable
              as String,
      arvlMsgSecond: null == arvlMsgSecond
          ? _value.arvlMsgSecond
          : arvlMsgSecond // ignore: cast_nullable_to_non_nullable
              as String,
      arvlCode: null == arvlCode
          ? _value.arvlCode
          : arvlCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Station implements _Station {
  _$_Station(
      {required this.subwayLineId,
      required this.trainLineName,
      required this.subwayName,
      required this.arvlTime,
      required this.arvlMsgFirst,
      required this.arvlMsgSecond,
      required this.arvlCode});

  factory _$_Station.fromJson(Map<String, dynamic> json) =>
      _$$_StationFromJson(json);

  @override
  final String subwayLineId;
// 지하철 호선 ID
//(1001:1호선, 1002:2호선, 1003:3호선, 1004:4호선, 1005:5호선 1006:6호선, 1007:7호선, 1008:8호선, 1009:9호선,
//1061:중앙선1063:경의중앙선, 1065:공항철도, 1067:경춘선, 1075:수의분당선 1077:신분당선, 1092:우이신설선)
  @override
  final String trainLineName;
// 지하철 호선 이름
  @override
  final String subwayName;
// 지하철 역 이름
  @override
  final String arvlTime;
// 도착 예정 시간
  @override
  final String arvlMsgFirst;
// 첫번째 도착 메시지
  @override
  final String arvlMsgSecond;
// 두번째 도착 메시지
// 도착코드
//(0:진입, 1:도착, 2:출발, 3:전역출발, 4:전역진입, 5:전역도착, 99:운행중)
  @override
  final String arvlCode;

  @override
  String toString() {
    return 'Station(subwayLineId: $subwayLineId, trainLineName: $trainLineName, subwayName: $subwayName, arvlTime: $arvlTime, arvlMsgFirst: $arvlMsgFirst, arvlMsgSecond: $arvlMsgSecond, arvlCode: $arvlCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Station &&
            (identical(other.subwayLineId, subwayLineId) ||
                other.subwayLineId == subwayLineId) &&
            (identical(other.trainLineName, trainLineName) ||
                other.trainLineName == trainLineName) &&
            (identical(other.subwayName, subwayName) ||
                other.subwayName == subwayName) &&
            (identical(other.arvlTime, arvlTime) ||
                other.arvlTime == arvlTime) &&
            (identical(other.arvlMsgFirst, arvlMsgFirst) ||
                other.arvlMsgFirst == arvlMsgFirst) &&
            (identical(other.arvlMsgSecond, arvlMsgSecond) ||
                other.arvlMsgSecond == arvlMsgSecond) &&
            (identical(other.arvlCode, arvlCode) ||
                other.arvlCode == arvlCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subwayLineId, trainLineName,
      subwayName, arvlTime, arvlMsgFirst, arvlMsgSecond, arvlCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StationCopyWith<_$_Station> get copyWith =>
      __$$_StationCopyWithImpl<_$_Station>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StationToJson(
      this,
    );
  }
}

abstract class _Station implements Station {
  factory _Station(
      {required final String subwayLineId,
      required final String trainLineName,
      required final String subwayName,
      required final String arvlTime,
      required final String arvlMsgFirst,
      required final String arvlMsgSecond,
      required final String arvlCode}) = _$_Station;

  factory _Station.fromJson(Map<String, dynamic> json) = _$_Station.fromJson;

  @override
  String get subwayLineId;
  @override // 지하철 호선 ID
//(1001:1호선, 1002:2호선, 1003:3호선, 1004:4호선, 1005:5호선 1006:6호선, 1007:7호선, 1008:8호선, 1009:9호선,
//1061:중앙선1063:경의중앙선, 1065:공항철도, 1067:경춘선, 1075:수의분당선 1077:신분당선, 1092:우이신설선)
  String get trainLineName;
  @override // 지하철 호선 이름
  String get subwayName;
  @override // 지하철 역 이름
  String get arvlTime;
  @override // 도착 예정 시간
  String get arvlMsgFirst;
  @override // 첫번째 도착 메시지
  String get arvlMsgSecond;
  @override // 두번째 도착 메시지
// 도착코드
//(0:진입, 1:도착, 2:출발, 3:전역출발, 4:전역진입, 5:전역도착, 99:운행중)
  String get arvlCode;
  @override
  @JsonKey(ignore: true)
  _$$_StationCopyWith<_$_Station> get copyWith =>
      throw _privateConstructorUsedError;
}
