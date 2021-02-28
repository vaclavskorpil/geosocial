
import 'package:freezed_annotation/freezed_annotation.dart';


part 'hours.freezed.dart';
part 'hours.g.dart';


@freezed
abstract class Hours with _$Hours {
  factory Hours(@JsonKey(name: "is_open_now") bool isOpenNow) = _Hours;

    factory Hours.fromJson(Map<String, dynamic> json) =>
      _$HoursFromJson(json);
}
