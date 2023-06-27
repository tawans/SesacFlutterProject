// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hits _$HitsFromJson(Map<String, dynamic> json) => Hits(
      id: json['id'] as int,
      pageURL: json['pageURL'] as String,
      type: json['type'] as String,
      tags: json['tags'] as String,
      previewURL: json['previewURL'] as String,
      previewWidth: json['previewWidth'] as int,
      previewHeight: json['previewHeight'] as int,
      webformatURL: json['webformatURL'] as String,
      webformatWidth: json['webformatWidth'] as int,
      webformatHeight: json['webformatHeight'] as int,
    );

Map<String, dynamic> _$HitsToJson(Hits instance) => <String, dynamic>{
      'id': instance.id,
      'pageURL': instance.pageURL,
      'type': instance.type,
      'tags': instance.tags,
      'previewURL': instance.previewURL,
      'previewWidth': instance.previewWidth,
      'previewHeight': instance.previewHeight,
      'webformatURL': instance.webformatURL,
      'webformatWidth': instance.webformatWidth,
      'webformatHeight': instance.webformatHeight,
    };
