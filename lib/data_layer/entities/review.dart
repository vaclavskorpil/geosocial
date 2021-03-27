import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/data_layer/entities/user.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
abstract class Review with _$Review {
  const factory Review(
    String id,
    int rating,
    User user,
    String text,
    String url
  ) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) =>
      _$ReviewFromJson(json);
}
