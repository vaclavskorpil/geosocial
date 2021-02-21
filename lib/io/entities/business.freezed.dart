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
  _Business call(String name, String id, String url, @nullable String phone,
      @nullable String price, @nullable double distance) {
    return _Business(
      name,
      id,
      url,
      phone,
      price,
      distance,
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
  String get url;
  @nullable
  String get phone;
  @nullable
  String get price;
  @nullable
  double get distance;

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
      String url,
      @nullable String phone,
      @nullable String price,
      @nullable double distance});
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
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as String,
      url: url == freezed ? _value.url : url as String,
      phone: phone == freezed ? _value.phone : phone as String,
      price: price == freezed ? _value.price : price as String,
      distance: distance == freezed ? _value.distance : distance as double,
    ));
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
      String url,
      @nullable String phone,
      @nullable String price,
      @nullable double distance});
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
  }) {
    return _then(_Business(
      name == freezed ? _value.name : name as String,
      id == freezed ? _value.id : id as String,
      url == freezed ? _value.url : url as String,
      phone == freezed ? _value.phone : phone as String,
      price == freezed ? _value.price : price as String,
      distance == freezed ? _value.distance : distance as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Business implements _Business {
  _$_Business(this.name, this.id, this.url, @nullable this.phone,
      @nullable this.price, @nullable this.distance)
      : assert(name != null),
        assert(id != null),
        assert(url != null);

  factory _$_Business.fromJson(Map<String, dynamic> json) =>
      _$_$_BusinessFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
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
  String toString() {
    return 'Business(name: $name, id: $id, url: $url, phone: $phone, price: $price, distance: $distance)';
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
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(distance);

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
  factory _Business(String name, String id, String url, @nullable String phone,
      @nullable String price, @nullable double distance) = _$_Business;

  factory _Business.fromJson(Map<String, dynamic> json) = _$_Business.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
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
  @JsonKey(ignore: true)
  _$BusinessCopyWith<_Business> get copyWith;
}
