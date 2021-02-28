import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
abstract class Location with _$Location {
  factory Location(
    @nullable String address1,
    @nullable String address2,
    @nullable String address3,
    @nullable String city,
    @JsonKey(name:'postal_code') @nullable String postalCode,
    @JsonKey(name:'formatted_address') @nullable List<String> formattedAddress,
  ) = _Location;

    factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
