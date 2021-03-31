// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hours _$_$_HoursFromJson(Map<String, dynamic> json) {
  return _$_Hours(
    json['is_open_now'] as bool,
    (json['open'] as List)
        ?.map((e) =>
            e == null ? null : OpenHours.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_HoursToJson(_$_Hours instance) => <String, dynamic>{
      'is_open_now': instance.isOpenNow,
      'open': instance.openHours,
    };
