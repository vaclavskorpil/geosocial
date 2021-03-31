import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/data_layer/entities/coordinates.dart';
import 'package:geosocial/data_layer/entities/location.dart';
import 'package:geosocial/data_layer/entities/review.dart';

import 'category.dart';
import 'hours.dart';

part 'business.freezed.dart';
part 'business.g.dart';

@freezed
abstract class Business with _$Business {
  Business._();

  factory Business(
    String name,
    String id,
    @nullable String url,
    @nullable String phone,
    @nullable String price,
    @nullable double distance,
    @nullable List<Category> categories,
    @nullable Location location,
    @nullable Coordinates coordinates,
    @nullable List<String> photos,
    @nullable List<Hours> hours,
    @nullable List<Review> reviews,
    @nullable double rating,
    @JsonKey(name: "review_count") @nullable int reviewCount,
    @JsonKey(name: "disply_phone") @nullable String displayPhone,
  ) = _Business;

  factory Business.empty() => Business(
      "", "", "", "", "", 0, [], null, null, [""], [], [], 0, null, null);

  String getIsOpenString() {
    if (hours?.isEmpty ?? true) return "";
    return hours.first.isOpenNow ? "Open" : "Closed";
  }

  bool isOpen() {
    if (hours?.isEmpty ?? true) return false;
    return hours.first.isOpenNow;
  }

  String todaysOpeningOursString() {
    try {
      //hours might be empty whitch would throw exception
      if (hours?.first?.openHours?.isEmpty ?? true) return "";
    } catch (e) {
      return "";
    }

    var weekday = DateTime.now().weekday;

    try {
      var today = hours.first.openHours[weekday - 1];
      return "${_addSemicolonToTime(today?.start)} - ${_addSemicolonToTime(today?.end)}";
    } catch (e) {
      return "";
    }
  }

  String _addSemicolonToTime(String time) {
    if (time == null) return "";
    var minutes = time.substring(time.length - 2);
    var hours = time.substring(0, time.length - 2);
    return "$hours:$minutes";
  }

  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);
}
