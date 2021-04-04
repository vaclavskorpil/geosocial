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
  _Sucess succes(Set<Marker> markers, LatLngBounds cameraBounds, bool isLoading,
      Option<ServerFailure> failure) {
    return _Sucess(
      markers,
      cameraBounds,
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
  LatLngBounds get cameraBounds;
  bool get isLoading;
  Option<ServerFailure> get failure;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult succes(Set<Marker> markers, LatLngBounds cameraBounds,
            bool isLoading, Option<ServerFailure> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(Set<Marker> markers, LatLngBounds cameraBounds,
        bool isLoading, Option<ServerFailure> failure),
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
      LatLngBounds cameraBounds,
      bool isLoading,
      Option<ServerFailure> failure});
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
    Object cameraBounds = freezed,
    Object isLoading = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      markers: markers == freezed ? _value.markers : markers as Set<Marker>,
      cameraBounds: cameraBounds == freezed
          ? _value.cameraBounds
          : cameraBounds as LatLngBounds,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failure: failure == freezed
          ? _value.failure
          : failure as Option<ServerFailure>,
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
      LatLngBounds cameraBounds,
      bool isLoading,
      Option<ServerFailure> failure});
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
    Object cameraBounds = freezed,
    Object isLoading = freezed,
    Object failure = freezed,
  }) {
    return _then(_Sucess(
      markers == freezed ? _value.markers : markers as Set<Marker>,
      cameraBounds == freezed
          ? _value.cameraBounds
          : cameraBounds as LatLngBounds,
      isLoading == freezed ? _value.isLoading : isLoading as bool,
      failure == freezed ? _value.failure : failure as Option<ServerFailure>,
    ));
  }
}

/// @nodoc
class _$_Sucess implements _Sucess {
  const _$_Sucess(this.markers, this.cameraBounds, this.isLoading, this.failure)
      : assert(markers != null),
        assert(cameraBounds != null),
        assert(isLoading != null),
        assert(failure != null);

  @override
  final Set<Marker> markers;
  @override
  final LatLngBounds cameraBounds;
  @override
  final bool isLoading;
  @override
  final Option<ServerFailure> failure;

  @override
  String toString() {
    return 'MapState.succes(markers: $markers, cameraBounds: $cameraBounds, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sucess &&
            (identical(other.markers, markers) ||
                const DeepCollectionEquality()
                    .equals(other.markers, markers)) &&
            (identical(other.cameraBounds, cameraBounds) ||
                const DeepCollectionEquality()
                    .equals(other.cameraBounds, cameraBounds)) &&
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
      const DeepCollectionEquality().hash(cameraBounds) ^
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
        TResult succes(Set<Marker> markers, LatLngBounds cameraBounds,
            bool isLoading, Option<ServerFailure> failure),
  }) {
    assert(succes != null);
    return succes(markers, cameraBounds, isLoading, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(Set<Marker> markers, LatLngBounds cameraBounds,
        bool isLoading, Option<ServerFailure> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(markers, cameraBounds, isLoading, failure);
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
  const factory _Sucess(Set<Marker> markers, LatLngBounds cameraBounds,
      bool isLoading, Option<ServerFailure> failure) = _$_Sucess;

  @override
  Set<Marker> get markers;
  @override
  LatLngBounds get cameraBounds;
  @override
  bool get isLoading;
  @override
  Option<ServerFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$SucessCopyWith<_Sucess> get copyWith;
}
