// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
class _$ReviewTearOff {
  const _$ReviewTearOff();

// ignore: unused_element
  _Review call(String id, int rating, User user, String text,
      @nullable String url, @JsonKey(name: 'time_created') String timeCreated) {
    return _Review(
      id,
      rating,
      user,
      text,
      url,
      timeCreated,
    );
  }

// ignore: unused_element
  Review fromJson(Map<String, Object> json) {
    return Review.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Review = _$ReviewTearOff();

/// @nodoc
mixin _$Review {
  String get id;
  int get rating;
  User get user;
  String get text;
  @nullable
  String get url;
  @JsonKey(name: 'time_created')
  String get timeCreated;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int rating,
      User user,
      String text,
      @nullable String url,
      @JsonKey(name: 'time_created') String timeCreated});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object id = freezed,
    Object rating = freezed,
    Object user = freezed,
    Object text = freezed,
    Object url = freezed,
    Object timeCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      rating: rating == freezed ? _value.rating : rating as int,
      user: user == freezed ? _value.user : user as User,
      text: text == freezed ? _value.text : text as String,
      url: url == freezed ? _value.url : url as String,
      timeCreated:
          timeCreated == freezed ? _value.timeCreated : timeCreated as String,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) then) =
      __$ReviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int rating,
      User user,
      String text,
      @nullable String url,
      @JsonKey(name: 'time_created') String timeCreated});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(_Review _value, $Res Function(_Review) _then)
      : super(_value, (v) => _then(v as _Review));

  @override
  _Review get _value => super._value as _Review;

  @override
  $Res call({
    Object id = freezed,
    Object rating = freezed,
    Object user = freezed,
    Object text = freezed,
    Object url = freezed,
    Object timeCreated = freezed,
  }) {
    return _then(_Review(
      id == freezed ? _value.id : id as String,
      rating == freezed ? _value.rating : rating as int,
      user == freezed ? _value.user : user as User,
      text == freezed ? _value.text : text as String,
      url == freezed ? _value.url : url as String,
      timeCreated == freezed ? _value.timeCreated : timeCreated as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Review implements _Review {
  _$_Review(this.id, this.rating, this.user, this.text, @nullable this.url,
      @JsonKey(name: 'time_created') this.timeCreated)
      : assert(id != null),
        assert(rating != null),
        assert(user != null),
        assert(text != null),
        assert(timeCreated != null);

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewFromJson(json);

  @override
  final String id;
  @override
  final int rating;
  @override
  final User user;
  @override
  final String text;
  @override
  @nullable
  final String url;
  @override
  @JsonKey(name: 'time_created')
  final String timeCreated;

  @override
  String toString() {
    return 'Review(id: $id, rating: $rating, user: $user, text: $text, url: $url, timeCreated: $timeCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Review &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.timeCreated, timeCreated) ||
                const DeepCollectionEquality()
                    .equals(other.timeCreated, timeCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(timeCreated);

  @JsonKey(ignore: true)
  @override
  _$ReviewCopyWith<_Review> get copyWith =>
      __$ReviewCopyWithImpl<_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewToJson(this);
  }
}

abstract class _Review implements Review {
  factory _Review(
      String id,
      int rating,
      User user,
      String text,
      @nullable String url,
      @JsonKey(name: 'time_created') String timeCreated) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  String get id;
  @override
  int get rating;
  @override
  User get user;
  @override
  String get text;
  @override
  @nullable
  String get url;
  @override
  @JsonKey(name: 'time_created')
  String get timeCreated;
  @override
  @JsonKey(ignore: true)
  _$ReviewCopyWith<_Review> get copyWith;
}
