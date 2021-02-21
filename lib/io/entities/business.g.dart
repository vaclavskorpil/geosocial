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
    };
