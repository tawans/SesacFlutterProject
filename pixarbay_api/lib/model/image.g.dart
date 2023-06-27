// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      total: json['total'] as int,
      totalHits: json['totalHits'] as int,
      hits: (json['hits'] as List<dynamic>)
          .map((e) => Hits.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits.map((e) => e.toJson()).toList(),
    };
