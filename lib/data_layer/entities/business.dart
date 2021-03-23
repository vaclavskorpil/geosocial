import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/data_layer/entities/coordinates.dart';
import 'package:geosocial/data_layer/entities/location.dart';

import 'category.dart';
import 'hours.dart';

part 'business.freezed.dart';
part 'business.g.dart';

@freezed
abstract class Business with _$Business {
  factory Business(
    String name,
    String id,
    @nullable String url,
    @nullable String phone,
    @nullable String price,
    @nullable double distance,
    @nullable List<Category> categories,
    @nullable Location location,
    @nullable Coordinates coordinates,
    @nullable List<String> photos,
    @nullable List<Hours> hours,
  ) = _Business;

  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);
}
