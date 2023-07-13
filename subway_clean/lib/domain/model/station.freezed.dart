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
  String get subwayLineId => throw _privateConstructorUsedError;
  String get trainLineName => throw _privateConstructorUsedError;
  String get subwayName => throw _privateConstructorUsedError;
  String get arvlTime => throw _privateConstructorUsedError;
  String get arvlMsgFirst => throw _privateConstructorUsedError;
  String get arvlMsgSecond => throw _privateConstructorUsedError;
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
  @override
  final String trainLineName;
  @override
  final String subwayName;
  @override
  final String arvlTime;
  @override
  final String arvlMsgFirst;
  @override
  final String arvlMsgSecond;
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
  @override
  String get trainLineName;
  @override
  String get subwayName;
  @override
  String get arvlTime;
  @override
  String get arvlMsgFirst;
  @override
  String get arvlMsgSecond;
  @override
  String get arvlCode;
  @override
  @JsonKey(ignore: true)
  _$$_StationCopyWith<_$_Station> get copyWith =>
      throw _privateConstructorUsedError;
}
