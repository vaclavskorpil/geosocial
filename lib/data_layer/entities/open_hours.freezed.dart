// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'open_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OpenHours _$OpenHoursFromJson(Map<String, dynamic> json) {
  return _OpenHours.fromJson(json);
}

/// @nodoc
class _$OpenHoursTearOff {
  const _$OpenHoursTearOff();

// ignore: unused_element
  _OpenHours call(
      @nullable String start, @nullable String end, @nullable int day) {
    return _OpenHours(
      start,
      end,
      day,
    );
  }

// ignore: unused_element
  OpenHours fromJson(Map<String, Object> json) {
    return OpenHours.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $OpenHours = _$OpenHoursTearOff();

/// @nodoc
mixin _$OpenHours {
  @nullable
  String get start;
  @nullable
  String get end;
  @nullable
  int get day;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $OpenHoursCopyWith<OpenHours> get copyWith;
}

/// @nodoc
abstract class $OpenHoursCopyWith<$Res> {
  factory $OpenHoursCopyWith(OpenHours value, $Res Function(OpenHours) then) =
      _$OpenHoursCopyWithImpl<$Res>;
  $Res call({@nullable String start, @nullable String end, @nullable int day});
}

/// @nodoc
class _$OpenHoursCopyWithImpl<$Res> implements $OpenHoursCopyWith<$Res> {
  _$OpenHoursCopyWithImpl(this._value, this._then);

  final OpenHours _value;
  // ignore: unused_field
  final $Res Function(OpenHours) _then;

  @override
  $Res call({
    Object start = freezed,
    Object end = freezed,
    Object day = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed ? _value.start : start as String,
      end: end == freezed ? _value.end : end as String,
      day: day == freezed ? _value.day : day as int,
    ));
  }
}

/// @nodoc
abstract class _$OpenHoursCopyWith<$Res> implements $OpenHoursCopyWith<$Res> {
  factory _$OpenHoursCopyWith(
          _OpenHours value, $Res Function(_OpenHours) then) =
      __$OpenHoursCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String start, @nullable String end, @nullable int day});
}

/// @nodoc
class __$OpenHoursCopyWithImpl<$Res> extends _$OpenHoursCopyWithImpl<$Res>
    implements _$OpenHoursCopyWith<$Res> {
  __$OpenHoursCopyWithImpl(_OpenHours _value, $Res Function(_OpenHours) _then)
      : super(_value, (v) => _then(v as _OpenHours));

  @override
  _OpenHours get _value => super._value as _OpenHours;

  @override
  $Res call({
    Object start = freezed,
    Object end = freezed,
    Object day = freezed,
  }) {
    return _then(_OpenHours(
      start == freezed ? _value.start : start as String,
      end == freezed ? _value.end : end as String,
      day == freezed ? _value.day : day as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_OpenHours implements _OpenHours {
  _$_OpenHours(@nullable this.start, @nullable this.end, @nullable this.day);

  factory _$_OpenHours.fromJson(Map<String, dynamic> json) =>
      _$_$_OpenHoursFromJson(json);

  @override
  @nullable
  final String start;
  @override
  @nullable
  final String end;
  @override
  @nullable
  final int day;

  @override
  String toString() {
    return 'OpenHours(start: $start, end: $end, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OpenHours &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end) ^
      const DeepCollectionEquality().hash(day);

  @JsonKey(ignore: true)
  @override
  _$OpenHoursCopyWith<_OpenHours> get copyWith =>
      __$OpenHoursCopyWithImpl<_OpenHours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OpenHoursToJson(this);
  }
}

abstract class _OpenHours implements OpenHours {
  factory _OpenHours(
          @nullable String start, @nullable String end, @nullable int day) =
      _$_OpenHours;

  factory _OpenHours.fromJson(Map<String, dynamic> json) =
      _$_OpenHours.fromJson;

  @override
  @nullable
  String get start;
  @override
  @nullable
  String get end;
  @override
  @nullable
  int get day;
  @override
  @JsonKey(ignore: true)
  _$OpenHoursCopyWith<_OpenHours> get copyWith;
}
