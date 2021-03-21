import 'package:freezed_annotation/freezed_annotation.dart';



part 'coordinates.freezed.dart';
part 'coordinates.g.dart';

@freezed
abstract class Coordinates with _$Coordinates {
  factory Coordinates(double latitude, double longitude) = _Coordinates;

    factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}
