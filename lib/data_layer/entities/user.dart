import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User(
    String id,
    String name,
    @JsonKey(name: "profile_url") String profileUrl,
    @JsonKey(name: "image_url") String imageUrl,
  ) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}
