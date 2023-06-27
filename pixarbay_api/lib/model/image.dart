import 'package:json_annotation/json_annotation.dart';

import 'hits.dart';

part 'image.g.dart';

@JsonSerializable(explicitToJson: true)
class Image {
  int total;
  int totalHits;
  List<Hits> hits;

  Image({
    required this.total,
    required this.totalHits,
    required this.hits,
  });

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}
