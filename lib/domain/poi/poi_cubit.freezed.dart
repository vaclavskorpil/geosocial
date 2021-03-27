// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'poi_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$POIStateTearOff {
  const _$POIStateTearOff();

// ignore: unused_element
  _POIState succes(
      {@required List<Business> businesses,
      @required bool isFetching,
      @required Option<ServerFailure> failure}) {
    return _POIState(
      businesses: businesses,
      isFetching: isFetching,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $POIState = _$POIStateTearOff();

/// @nodoc
mixin _$POIState {
  List<Business> get businesses;
  bool get isFetching;
  Option<ServerFailure> get failure;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult succes(List<Business> businesses, bool isFetching,
            Option<ServerFailure> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(List<Business> businesses, bool isFetching,
        Option<ServerFailure> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_POIState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_POIState value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $POIStateCopyWith<POIState> get copyWith;
}

/// @nodoc
abstract class $POIStateCopyWith<$Res> {
  factory $POIStateCopyWith(POIState value, $Res Function(POIState) then) =
      _$POIStateCopyWithImpl<$Res>;
  $Res call(
      {List<Business> businesses,
      bool isFetching,
      Option<ServerFailure> failure});
}

/// @nodoc
class _$POIStateCopyWithImpl<$Res> implements $POIStateCopyWith<$Res> {
  _$POIStateCopyWithImpl(this._value, this._then);

  final POIState _value;
  // ignore: unused_field
  final $Res Function(POIState) _then;

  @override
  $Res call({
    Object businesses = freezed,
    Object isFetching = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      businesses: businesses == freezed
          ? _value.businesses
          : businesses as List<Business>,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      failure: failure == freezed
          ? _value.failure
          : failure as Option<ServerFailure>,
    ));
  }
}

/// @nodoc
abstract class _$POIStateCopyWith<$Res> implements $POIStateCopyWith<$Res> {
  factory _$POIStateCopyWith(_POIState value, $Res Function(_POIState) then) =
      __$POIStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Business> businesses,
      bool isFetching,
      Option<ServerFailure> failure});
}

/// @nodoc
class __$POIStateCopyWithImpl<$Res> extends _$POIStateCopyWithImpl<$Res>
    implements _$POIStateCopyWith<$Res> {
  __$POIStateCopyWithImpl(_POIState _value, $Res Function(_POIState) _then)
      : super(_value, (v) => _then(v as _POIState));

  @override
  _POIState get _value => super._value as _POIState;

  @override
  $Res call({
    Object businesses = freezed,
    Object isFetching = freezed,
    Object failure = freezed,
  }) {
    return _then(_POIState(
      businesses: businesses == freezed
          ? _value.businesses
          : businesses as List<Business>,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      failure: failure == freezed
          ? _value.failure
          : failure as Option<ServerFailure>,
    ));
  }
}

/// @nodoc
class _$_POIState with DiagnosticableTreeMixin implements _POIState {
  _$_POIState(
      {@required this.businesses,
      @required this.isFetching,
      @required this.failure})
      : assert(businesses != null),
        assert(isFetching != null),
        assert(failure != null);

  @override
  final List<Business> businesses;
  @override
  final bool isFetching;
  @override
  final Option<ServerFailure> failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'POIState.succes(businesses: $businesses, isFetching: $isFetching, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'POIState.succes'))
      ..add(DiagnosticsProperty('businesses', businesses))
      ..add(DiagnosticsProperty('isFetching', isFetching))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _POIState &&
            (identical(other.businesses, businesses) ||
                const DeepCollectionEquality()
                    .equals(other.businesses, businesses)) &&
            (identical(other.isFetching, isFetching) ||
                const DeepCollectionEquality()
                    .equals(other.isFetching, isFetching)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(businesses) ^
      const DeepCollectionEquality().hash(isFetching) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$POIStateCopyWith<_POIState> get copyWith =>
      __$POIStateCopyWithImpl<_POIState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult succes(List<Business> businesses, bool isFetching,
            Option<ServerFailure> failure),
  }) {
    assert(succes != null);
    return succes(businesses, isFetching, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(List<Business> businesses, bool isFetching,
        Option<ServerFailure> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(businesses, isFetching, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_POIState value),
  }) {
    assert(succes != null);
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_POIState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class _POIState implements POIState {
  factory _POIState(
      {@required List<Business> businesses,
      @required bool isFetching,
      @required Option<ServerFailure> failure}) = _$_POIState;

  @override
  List<Business> get businesses;
  @override
  bool get isFetching;
  @override
  Option<ServerFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$POIStateCopyWith<_POIState> get copyWith;
}
