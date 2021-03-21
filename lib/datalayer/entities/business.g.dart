// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Business _$_$_BusinessFromJson(Map<String, dynamic> json) {
  return _$_Business(
    json['name'] as String,
    json['id'] as String,
    json['url'] as String,
    json['phone'] as String,
    json['price'] as String,
    (json['distance'] as num)?.toDouble(),
    (json['categories'] as List)
        ?.map((e) =>
            e == null ? null : Category.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    json['coordinates'] == null
        ? null
        : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
    (json['photos'] as List)?.map((e) => e as String)?.toList(),
    (json['hours'] as List)
        ?.map(
            (e) => e == null ? null : Hours.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_BusinessToJson(_$_Business instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'url': instance.url,
      'phone': instance.phone,
      'price': instance.price,
      'distance': instance.distance,
      'categories': instance.categories,
      'location': instance.location,
      'coordinates': instance.coordinates,
      'photos': instance.photos,
      'hours': instance.hours,
    };
