// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MapStateTearOff {
  const _$MapStateTearOff();

// ignore: unused_element
  _Sucess succes(Set<Marker> markers, LatLng cameraPosition, bool isLoading,
      Option<Failure> failure) {
    return _Sucess(
      markers,
      cameraPosition,
      isLoading,
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MapState = _$MapStateTearOff();

/// @nodoc
mixin _$MapState {
  Set<Marker> get markers;
  LatLng get cameraPosition;
  bool get isLoading;
  Option<Failure> get failure;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult succes(Set<Marker> markers, LatLng cameraPosition,
            bool isLoading, Option<Failure> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(Set<Marker> markers, LatLng cameraPosition, bool isLoading,
        Option<Failure> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_Sucess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_Sucess value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
  $Res call(
      {Set<Marker> markers,
      LatLng cameraPosition,
      bool isLoading,
      Option<Failure> failure});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;

  @override
  $Res call({
    Object markers = freezed,
    Object cameraPosition = freezed,
    Object isLoading = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      markers: markers == freezed ? _value.markers : markers as Set<Marker>,
      cameraPosition: cameraPosition == freezed
          ? _value.cameraPosition
          : cameraPosition as LatLng,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failure: failure == freezed ? _value.failure : failure as Option<Failure>,
    ));
  }
}

/// @nodoc
abstract class _$SucessCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$SucessCopyWith(_Sucess value, $Res Function(_Sucess) then) =
      __$SucessCopyWithImpl<$Res>;
  @override
  $Res call(
      {Set<Marker> markers,
      LatLng cameraPosition,
      bool isLoading,
      Option<Failure> failure});
}

/// @nodoc
class __$SucessCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$SucessCopyWith<$Res> {
  __$SucessCopyWithImpl(_Sucess _value, $Res Function(_Sucess) _then)
      : super(_value, (v) => _then(v as _Sucess));

  @override
  _Sucess get _value => super._value as _Sucess;

  @override
  $Res call({
    Object markers = freezed,
    Object cameraPosition = freezed,
    Object isLoading = freezed,
    Object failure = freezed,
  }) {
    return _then(_Sucess(
      markers == freezed ? _value.markers : markers as Set<Marker>,
      cameraPosition == freezed
          ? _value.cameraPosition
          : cameraPosition as LatLng,
      isLoading == freezed ? _value.isLoading : isLoading as bool,
      failure == freezed ? _value.failure : failure as Option<Failure>,
    ));
  }
}

/// @nodoc
class _$_Sucess implements _Sucess {
  const _$_Sucess(
      this.markers, this.cameraPosition, this.isLoading, this.failure)
      : assert(markers != null),
        assert(cameraPosition != null),
        assert(isLoading != null),
        assert(failure != null);

  @override
  final Set<Marker> markers;
  @override
  final LatLng cameraPosition;
  @override
  final bool isLoading;
  @override
  final Option<Failure> failure;

  @override
  String toString() {
    return 'MapState.succes(markers: $markers, cameraPosition: $cameraPosition, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sucess &&
            (identical(other.markers, markers) ||
                const DeepCollectionEquality()
                    .equals(other.markers, markers)) &&
            (identical(other.cameraPosition, cameraPosition) ||
                const DeepCollectionEquality()
                    .equals(other.cameraPosition, cameraPosition)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(markers) ^
      const DeepCollectionEquality().hash(cameraPosition) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$SucessCopyWith<_Sucess> get copyWith =>
      __$SucessCopyWithImpl<_Sucess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult succes(Set<Marker> markers, LatLng cameraPosition,
            bool isLoading, Option<Failure> failure),
  }) {
    assert(succes != null);
    return succes(markers, cameraPosition, isLoading, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(Set<Marker> markers, LatLng cameraPosition, bool isLoading,
        Option<Failure> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(markers, cameraPosition, isLoading, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_Sucess value),
  }) {
    assert(succes != null);
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_Sucess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class _Sucess implements MapState {
  const factory _Sucess(Set<Marker> markers, LatLng cameraPosition,
      bool isLoading, Option<Failure> failure) = _$_Sucess;

  @override
  Set<Marker> get markers;
  @override
  LatLng get cameraPosition;
  @override
  bool get isLoading;
  @override
  Option<Failure> get failure;
  @override
  @JsonKey(ignore: true)
  _$SucessCopyWith<_Sucess> get copyWith;
}
