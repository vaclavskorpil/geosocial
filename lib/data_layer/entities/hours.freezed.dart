// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Hours _$HoursFromJson(Map<String, dynamic> json) {
  return _Hours.fromJson(json);
}

/// @nodoc
class _$HoursTearOff {
  const _$HoursTearOff();

// ignore: unused_element
  _Hours call(@JsonKey(name: 'is_open_now') bool isOpenNow) {
    return _Hours(
      isOpenNow,
    );
  }

// ignore: unused_element
  Hours fromJson(Map<String, Object> json) {
    return Hours.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Hours = _$HoursTearOff();

/// @nodoc
mixin _$Hours {
  @JsonKey(name: 'is_open_now')
  bool get isOpenNow;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HoursCopyWith<Hours> get copyWith;
}

/// @nodoc
abstract class $HoursCopyWith<$Res> {
  factory $HoursCopyWith(Hours value, $Res Function(Hours) then) =
      _$HoursCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'is_open_now') bool isOpenNow});
}

/// @nodoc
class _$HoursCopyWithImpl<$Res> implements $HoursCopyWith<$Res> {
  _$HoursCopyWithImpl(this._value, this._then);

  final Hours _value;
  // ignore: unused_field
  final $Res Function(Hours) _then;

  @override
  $Res call({
    Object isOpenNow = freezed,
  }) {
    return _then(_value.copyWith(
      isOpenNow: isOpenNow == freezed ? _value.isOpenNow : isOpenNow as bool,
    ));
  }
}

/// @nodoc
abstract class _$HoursCopyWith<$Res> implements $HoursCopyWith<$Res> {
  factory _$HoursCopyWith(_Hours value, $Res Function(_Hours) then) =
      __$HoursCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'is_open_now') bool isOpenNow});
}

/// @nodoc
class __$HoursCopyWithImpl<$Res> extends _$HoursCopyWithImpl<$Res>
    implements _$HoursCopyWith<$Res> {
  __$HoursCopyWithImpl(_Hours _value, $Res Function(_Hours) _then)
      : super(_value, (v) => _then(v as _Hours));

  @override
  _Hours get _value => super._value as _Hours;

  @override
  $Res call({
    Object isOpenNow = freezed,
  }) {
    return _then(_Hours(
      isOpenNow == freezed ? _value.isOpenNow : isOpenNow as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Hours implements _Hours {
  _$_Hours(@JsonKey(name: 'is_open_now') this.isOpenNow)
      : assert(isOpenNow != null);

  factory _$_Hours.fromJson(Map<String, dynamic> json) =>
      _$_$_HoursFromJson(json);

  @override
  @JsonKey(name: 'is_open_now')
  final bool isOpenNow;

  @override
  String toString() {
    return 'Hours(isOpenNow: $isOpenNow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Hours &&
            (identical(other.isOpenNow, isOpenNow) ||
                const DeepCollectionEquality()
                    .equals(other.isOpenNow, isOpenNow)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isOpenNow);

  @JsonKey(ignore: true)
  @override
  _$HoursCopyWith<_Hours> get copyWith =>
      __$HoursCopyWithImpl<_Hours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HoursToJson(this);
  }
}

abstract class _Hours implements Hours {
  factory _Hours(@JsonKey(name: 'is_open_now') bool isOpenNow) = _$_Hours;

  factory _Hours.fromJson(Map<String, dynamic> json) = _$_Hours.fromJson;

  @override
  @JsonKey(name: 'is_open_now')
  bool get isOpenNow;
  @override
  @JsonKey(ignore: true)
  _$HoursCopyWith<_Hours> get copyWith;
}
