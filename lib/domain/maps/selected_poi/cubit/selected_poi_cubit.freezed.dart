// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'selected_poi_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SelectedPoiStateTearOff {
  const _$SelectedPoiStateTearOff();

// ignore: unused_element
  _SelectedPoiState call(Business selectedBusiness, double infoboxPosition) {
    return _SelectedPoiState(
      selectedBusiness,
      infoboxPosition,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SelectedPoiState = _$SelectedPoiStateTearOff();

/// @nodoc
mixin _$SelectedPoiState {
  Business get selectedBusiness;
  double get infoboxPosition;

  @JsonKey(ignore: true)
  $SelectedPoiStateCopyWith<SelectedPoiState> get copyWith;
}

/// @nodoc
abstract class $SelectedPoiStateCopyWith<$Res> {
  factory $SelectedPoiStateCopyWith(
          SelectedPoiState value, $Res Function(SelectedPoiState) then) =
      _$SelectedPoiStateCopyWithImpl<$Res>;
  $Res call({Business selectedBusiness, double infoboxPosition});

  $BusinessCopyWith<$Res> get selectedBusiness;
}

/// @nodoc
class _$SelectedPoiStateCopyWithImpl<$Res>
    implements $SelectedPoiStateCopyWith<$Res> {
  _$SelectedPoiStateCopyWithImpl(this._value, this._then);

  final SelectedPoiState _value;
  // ignore: unused_field
  final $Res Function(SelectedPoiState) _then;

  @override
  $Res call({
    Object selectedBusiness = freezed,
    Object infoboxPosition = freezed,
  }) {
    return _then(_value.copyWith(
      selectedBusiness: selectedBusiness == freezed
          ? _value.selectedBusiness
          : selectedBusiness as Business,
      infoboxPosition: infoboxPosition == freezed
          ? _value.infoboxPosition
          : infoboxPosition as double,
    ));
  }

  @override
  $BusinessCopyWith<$Res> get selectedBusiness {
    if (_value.selectedBusiness == null) {
      return null;
    }
    return $BusinessCopyWith<$Res>(_value.selectedBusiness, (value) {
      return _then(_value.copyWith(selectedBusiness: value));
    });
  }
}

/// @nodoc
abstract class _$SelectedPoiStateCopyWith<$Res>
    implements $SelectedPoiStateCopyWith<$Res> {
  factory _$SelectedPoiStateCopyWith(
          _SelectedPoiState value, $Res Function(_SelectedPoiState) then) =
      __$SelectedPoiStateCopyWithImpl<$Res>;
  @override
  $Res call({Business selectedBusiness, double infoboxPosition});

  @override
  $BusinessCopyWith<$Res> get selectedBusiness;
}

/// @nodoc
class __$SelectedPoiStateCopyWithImpl<$Res>
    extends _$SelectedPoiStateCopyWithImpl<$Res>
    implements _$SelectedPoiStateCopyWith<$Res> {
  __$SelectedPoiStateCopyWithImpl(
      _SelectedPoiState _value, $Res Function(_SelectedPoiState) _then)
      : super(_value, (v) => _then(v as _SelectedPoiState));

  @override
  _SelectedPoiState get _value => super._value as _SelectedPoiState;

  @override
  $Res call({
    Object selectedBusiness = freezed,
    Object infoboxPosition = freezed,
  }) {
    return _then(_SelectedPoiState(
      selectedBusiness == freezed
          ? _value.selectedBusiness
          : selectedBusiness as Business,
      infoboxPosition == freezed
          ? _value.infoboxPosition
          : infoboxPosition as double,
    ));
  }
}

/// @nodoc
class _$_SelectedPoiState implements _SelectedPoiState {
  const _$_SelectedPoiState(this.selectedBusiness, this.infoboxPosition)
      : assert(selectedBusiness != null),
        assert(infoboxPosition != null);

  @override
  final Business selectedBusiness;
  @override
  final double infoboxPosition;

  @override
  String toString() {
    return 'SelectedPoiState(selectedBusiness: $selectedBusiness, infoboxPosition: $infoboxPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedPoiState &&
            (identical(other.selectedBusiness, selectedBusiness) ||
                const DeepCollectionEquality()
                    .equals(other.selectedBusiness, selectedBusiness)) &&
            (identical(other.infoboxPosition, infoboxPosition) ||
                const DeepCollectionEquality()
                    .equals(other.infoboxPosition, infoboxPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedBusiness) ^
      const DeepCollectionEquality().hash(infoboxPosition);

  @JsonKey(ignore: true)
  @override
  _$SelectedPoiStateCopyWith<_SelectedPoiState> get copyWith =>
      __$SelectedPoiStateCopyWithImpl<_SelectedPoiState>(this, _$identity);
}

abstract class _SelectedPoiState implements SelectedPoiState {
  const factory _SelectedPoiState(
      Business selectedBusiness, double infoboxPosition) = _$_SelectedPoiState;

  @override
  Business get selectedBusiness;
  @override
  double get infoboxPosition;
  @override
  @JsonKey(ignore: true)
  _$SelectedPoiStateCopyWith<_SelectedPoiState> get copyWith;
}
