// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$_$_LocationFromJson(Map<String, dynamic> json) {
  return _$_Location(
    json['address1'] as String,
    json['address2'] as String,
    json['address3'] as String,
    json['city'] as String,
    json['postal_code'] as String,
    json['formatted_address'] as String,
  );
}

Map<String, dynamic> _$_$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'city': instance.city,
      'postal_code': instance.postalCode,
      'formatted_address': instance.formattedAddress,
    };
