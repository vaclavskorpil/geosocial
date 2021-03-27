import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'coordinates.freezed.dart';
part 'coordinates.g.dart';

@freezed
abstract class Coordinates with _$Coordinates {
  Coordinates._();

  const factory Coordinates(double latitude, double longitude) = _Coordinates;

  LatLng getLatLng() {
    return LatLng(latitude, longitude);
  }

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}
