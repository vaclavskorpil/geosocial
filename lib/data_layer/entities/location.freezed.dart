// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

// ignore: unused_element
  _Location call(
      @nullable String address1,
      @nullable String address2,
      @nullable String address3,
      @nullable String city,
      @JsonKey(name: 'postal_code') @nullable String postalCode,
      @JsonKey(name: 'formatted_address') @nullable String formattedAddress) {
    return _Location(
      address1,
      address2,
      address3,
      city,
      postalCode,
      formattedAddress,
    );
  }

// ignore: unused_element
  Location fromJson(Map<String, Object> json) {
    return Location.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  @nullable
  String get address1;
  @nullable
  String get address2;
  @nullable
  String get address3;
  @nullable
  String get city;
  @JsonKey(name: 'postal_code')
  @nullable
  String get postalCode;
  @JsonKey(name: 'formatted_address')
  @nullable
  String get formattedAddress;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call(
      {@nullable String address1,
      @nullable String address2,
      @nullable String address3,
      @nullable String city,
      @JsonKey(name: 'postal_code') @nullable String postalCode,
      @JsonKey(name: 'formatted_address') @nullable String formattedAddress});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object address1 = freezed,
    Object address2 = freezed,
    Object address3 = freezed,
    Object city = freezed,
    Object postalCode = freezed,
    Object formattedAddress = freezed,
  }) {
    return _then(_value.copyWith(
      address1: address1 == freezed ? _value.address1 : address1 as String,
      address2: address2 == freezed ? _value.address2 : address2 as String,
      address3: address3 == freezed ? _value.address3 : address3 as String,
      city: city == freezed ? _value.city : city as String,
      postalCode:
          postalCode == freezed ? _value.postalCode : postalCode as String,
      formattedAddress: formattedAddress == freezed
          ? _value.formattedAddress
          : formattedAddress as String,
    ));
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String address1,
      @nullable String address2,
      @nullable String address3,
      @nullable String city,
      @JsonKey(name: 'postal_code') @nullable String postalCode,
      @JsonKey(name: 'formatted_address') @nullable String formattedAddress});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object address1 = freezed,
    Object address2 = freezed,
    Object address3 = freezed,
    Object city = freezed,
    Object postalCode = freezed,
    Object formattedAddress = freezed,
  }) {
    return _then(_Location(
      address1 == freezed ? _value.address1 : address1 as String,
      address2 == freezed ? _value.address2 : address2 as String,
      address3 == freezed ? _value.address3 : address3 as String,
      city == freezed ? _value.city : city as String,
      postalCode == freezed ? _value.postalCode : postalCode as String,
      formattedAddress == freezed
          ? _value.formattedAddress
          : formattedAddress as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Location implements _Location {
  _$_Location(
      @nullable this.address1,
      @nullable this.address2,
      @nullable this.address3,
      @nullable this.city,
      @JsonKey(name: 'postal_code') @nullable this.postalCode,
      @JsonKey(name: 'formatted_address') @nullable this.formattedAddress);

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationFromJson(json);

  @override
  @nullable
  final String address1;
  @override
  @nullable
  final String address2;
  @override
  @nullable
  final String address3;
  @override
  @nullable
  final String city;
  @override
  @JsonKey(name: 'postal_code')
  @nullable
  final String postalCode;
  @override
  @JsonKey(name: 'formatted_address')
  @nullable
  final String formattedAddress;

  @override
  String toString() {
    return 'Location(address1: $address1, address2: $address2, address3: $address3, city: $city, postalCode: $postalCode, formattedAddress: $formattedAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Location &&
            (identical(other.address1, address1) ||
                const DeepCollectionEquality()
                    .equals(other.address1, address1)) &&
            (identical(other.address2, address2) ||
                const DeepCollectionEquality()
                    .equals(other.address2, address2)) &&
            (identical(other.address3, address3) ||
                const DeepCollectionEquality()
                    .equals(other.address3, address3)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.formattedAddress, formattedAddress) ||
                const DeepCollectionEquality()
                    .equals(other.formattedAddress, formattedAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address1) ^
      const DeepCollectionEquality().hash(address2) ^
      const DeepCollectionEquality().hash(address3) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(formattedAddress);

  @JsonKey(ignore: true)
  @override
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationToJson(this);
  }
}

abstract class _Location implements Location {
  factory _Location(
      @nullable
          String address1,
      @nullable
          String address2,
      @nullable
          String address3,
      @nullable
          String city,
      @JsonKey(name: 'postal_code')
      @nullable
          String postalCode,
      @JsonKey(name: 'formatted_address')
      @nullable
          String formattedAddress) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  @nullable
  String get address1;
  @override
  @nullable
  String get address2;
  @override
  @nullable
  String get address3;
  @override
  @nullable
  String get city;
  @override
  @JsonKey(name: 'postal_code')
  @nullable
  String get postalCode;
  @override
  @JsonKey(name: 'formatted_address')
  @nullable
  String get formattedAddress;
  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith;
}
