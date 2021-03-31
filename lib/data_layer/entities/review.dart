import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/data_layer/entities/user.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
abstract class Review with _$Review {
  factory Review(
      String id,
      int rating,
      User user,
      String text,
      @nullable String url,
      @JsonKey(name: "time_created") String timeCreated) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
