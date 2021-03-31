import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_hours.freezed.dart';
part 'open_hours.g.dart';

@freezed
abstract class OpenHours with _$OpenHours {
  factory OpenHours(
    @nullable String start,
    @nullable String end,
    @nullable int day,
  ) = _OpenHours;

  factory OpenHours.fromJson(Map<String, dynamic> json) =>
      _$OpenHoursFromJson(json);
}
