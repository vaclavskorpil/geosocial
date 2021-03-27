// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'business.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Business _$BusinessFromJson(Map<String, dynamic> json) {
  return _Business.fromJson(json);
}

/// @nodoc
class _$BusinessTearOff {
  const _$BusinessTearOff();

// ignore: unused_element
  _Business call(
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
      @nullable List<Review> reviews) {
    return _Business(
      name,
      id,
      url,
      phone,
      price,
      distance,
      categories,
      location,
      coordinates,
      photos,
      hours,
      reviews,
    );
  }

// ignore: unused_element
  Business fromJson(Map<String, Object> json) {
    return Business.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Business = _$BusinessTearOff();

/// @nodoc
mixin _$Business {
  String get name;
  String get id;
  @nullable
  String get url;
  @nullable
  String get phone;
  @nullable
  String get price;
  @nullable
  double get distance;
  @nullable
  List<Category> get categories;
  @nullable
  Location get location;
  @nullable
  Coordinates get coordinates;
  @nullable
  List<String> get photos;
  @nullable
  List<Hours> get hours;
  @nullable
  List<Review> get reviews;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BusinessCopyWith<Business> get copyWith;
}

/// @nodoc
abstract class $BusinessCopyWith<$Res> {
  factory $BusinessCopyWith(Business value, $Res Function(Business) then) =
      _$BusinessCopyWithImpl<$Res>;
  $Res call(
      {String name,
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
      @nullable List<Review> reviews});

  $LocationCopyWith<$Res> get location;
  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$BusinessCopyWithImpl<$Res> implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._value, this._then);

  final Business _value;
  // ignore: unused_field
  final $Res Function(Business) _then;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
    Object url = freezed,
    Object phone = freezed,
    Object price = freezed,
    Object distance = freezed,
    Object categories = freezed,
    Object location = freezed,
    Object coordinates = freezed,
    Object photos = freezed,
    Object hours = freezed,
    Object reviews = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as String,
      url: url == freezed ? _value.url : url as String,
      phone: phone == freezed ? _value.phone : phone as String,
      price: price == freezed ? _value.price : price as String,
      distance: distance == freezed ? _value.distance : distance as double,
      categories: categories == freezed
          ? _value.categories
          : categories as List<Category>,
      location: location == freezed ? _value.location : location as Location,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates as Coordinates,
      photos: photos == freezed ? _value.photos : photos as List<String>,
      hours: hours == freezed ? _value.hours : hours as List<Hours>,
      reviews: reviews == freezed ? _value.reviews : reviews as List<Review>,
    ));
  }

  @override
  $LocationCopyWith<$Res> get location {
    if (_value.location == null) {
      return null;
    }
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $CoordinatesCopyWith<$Res> get coordinates {
    if (_value.coordinates == null) {
      return null;
    }
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
abstract class _$BusinessCopyWith<$Res> implements $BusinessCopyWith<$Res> {
  factory _$BusinessCopyWith(_Business value, $Res Function(_Business) then) =
      __$BusinessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
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
      @nullable List<Review> reviews});

  @override
  $LocationCopyWith<$Res> get location;
  @override
  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$BusinessCopyWithImpl<$Res> extends _$BusinessCopyWithImpl<$Res>
    implements _$BusinessCopyWith<$Res> {
  __$BusinessCopyWithImpl(_Business _value, $Res Function(_Business) _then)
      : super(_value, (v) => _then(v as _Business));

  @override
  _Business get _value => super._value as _Business;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
    Object url = freezed,
    Object phone = freezed,
    Object price = freezed,
    Object distance = freezed,
    Object categories = freezed,
    Object location = freezed,
    Object coordinates = freezed,
    Object photos = freezed,
    Object hours = freezed,
    Object reviews = freezed,
  }) {
    return _then(_Business(
      name == freezed ? _value.name : name as String,
      id == freezed ? _value.id : id as String,
      url == freezed ? _value.url : url as String,
      phone == freezed ? _value.phone : phone as String,
      price == freezed ? _value.price : price as String,
      distance == freezed ? _value.distance : distance as double,
      categories == freezed ? _value.categories : categories as List<Category>,
      location == freezed ? _value.location : location as Location,
      coordinates == freezed ? _value.coordinates : coordinates as Coordinates,
      photos == freezed ? _value.photos : photos as List<String>,
      hours == freezed ? _value.hours : hours as List<Hours>,
      reviews == freezed ? _value.reviews : reviews as List<Review>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Business implements _Business {
  _$_Business(
      this.name,
      this.id,
      @nullable this.url,
      @nullable this.phone,
      @nullable this.price,
      @nullable this.distance,
      @nullable this.categories,
      @nullable this.location,
      @nullable this.coordinates,
      @nullable this.photos,
      @nullable this.hours,
      @nullable this.reviews)
      : assert(name != null),
        assert(id != null);

  factory _$_Business.fromJson(Map<String, dynamic> json) =>
      _$_$_BusinessFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  @nullable
  final String url;
  @override
  @nullable
  final String phone;
  @override
  @nullable
  final String price;
  @override
  @nullable
  final double distance;
  @override
  @nullable
  final List<Category> categories;
  @override
  @nullable
  final Location location;
  @override
  @nullable
  final Coordinates coordinates;
  @override
  @nullable
  final List<String> photos;
  @override
  @nullable
  final List<Hours> hours;
  @override
  @nullable
  final List<Review> reviews;

  @override
  String toString() {
    return 'Business(name: $name, id: $id, url: $url, phone: $phone, price: $price, distance: $distance, categories: $categories, location: $location, coordinates: $coordinates, photos: $photos, hours: $hours, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Business &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.hours, hours) ||
                const DeepCollectionEquality().equals(other.hours, hours)) &&
            (identical(other.reviews, reviews) ||
                const DeepCollectionEquality().equals(other.reviews, reviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(hours) ^
      const DeepCollectionEquality().hash(reviews);

  @JsonKey(ignore: true)
  @override
  _$BusinessCopyWith<_Business> get copyWith =>
      __$BusinessCopyWithImpl<_Business>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BusinessToJson(this);
  }
}

abstract class _Business implements Business {
  factory _Business(
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
      @nullable List<Review> reviews) = _$_Business;

  factory _Business.fromJson(Map<String, dynamic> json) = _$_Business.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  @nullable
  String get url;
  @override
  @nullable
  String get phone;
  @override
  @nullable
  String get price;
  @override
  @nullable
  double get distance;
  @override
  @nullable
  List<Category> get categories;
  @override
  @nullable
  Location get location;
  @override
  @nullable
  Coordinates get coordinates;
  @override
  @nullable
  List<String> get photos;
  @override
  @nullable
  List<Hours> get hours;
  @override
  @nullable
  List<Review> get reviews;
  @override
  @JsonKey(ignore: true)
  _$BusinessCopyWith<_Business> get copyWith;
}
