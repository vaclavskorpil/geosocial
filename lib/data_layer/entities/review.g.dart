// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$_$_ReviewFromJson(Map<String, dynamic> json) {
  return _$_Review(
    json['id'] as String,
    json['rating'] as int,
    json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    json['text'] as String,
    json['url'] as String,
    json['time_created'] as String,
  );
}

Map<String, dynamic> _$_$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'user': instance.user,
      'text': instance.text,
      'url': instance.url,
      'time_created': instance.timeCreated,
    };
