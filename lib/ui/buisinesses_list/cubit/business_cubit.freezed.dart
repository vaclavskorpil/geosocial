// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'business_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BusinessStateTearOff {
  const _$BusinessStateTearOff();

// ignore: unused_element
  _BusinessState succes(
      {@required List<Business> businesses,
      @required bool isFetching,
      @required Option<Failure> failure}) {
    return _BusinessState(
      businesses: businesses,
      isFetching: isFetching,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BusinessState = _$BusinessStateTearOff();

/// @nodoc
mixin _$BusinessState {
  List<Business> get businesses;
  bool get isFetching;
  Option<Failure> get failure;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult succes(List<Business> businesses, bool isFetching,
            Option<Failure> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(
        List<Business> businesses, bool isFetching, Option<Failure> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_BusinessState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_BusinessState value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $BusinessStateCopyWith<BusinessState> get copyWith;
}

/// @nodoc
abstract class $BusinessStateCopyWith<$Res> {
  factory $BusinessStateCopyWith(
          BusinessState value, $Res Function(BusinessState) then) =
      _$BusinessStateCopyWithImpl<$Res>;
  $Res call(
      {List<Business> businesses, bool isFetching, Option<Failure> failure});
}

/// @nodoc
class _$BusinessStateCopyWithImpl<$Res>
    implements $BusinessStateCopyWith<$Res> {
  _$BusinessStateCopyWithImpl(this._value, this._then);

  final BusinessState _value;
  // ignore: unused_field
  final $Res Function(BusinessState) _then;

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
      failure: failure == freezed ? _value.failure : failure as Option<Failure>,
    ));
  }
}

/// @nodoc
abstract class _$BusinessStateCopyWith<$Res>
    implements $BusinessStateCopyWith<$Res> {
  factory _$BusinessStateCopyWith(
          _BusinessState value, $Res Function(_BusinessState) then) =
      __$BusinessStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Business> businesses, bool isFetching, Option<Failure> failure});
}

/// @nodoc
class __$BusinessStateCopyWithImpl<$Res>
    extends _$BusinessStateCopyWithImpl<$Res>
    implements _$BusinessStateCopyWith<$Res> {
  __$BusinessStateCopyWithImpl(
      _BusinessState _value, $Res Function(_BusinessState) _then)
      : super(_value, (v) => _then(v as _BusinessState));

  @override
  _BusinessState get _value => super._value as _BusinessState;

  @override
  $Res call({
    Object businesses = freezed,
    Object isFetching = freezed,
    Object failure = freezed,
  }) {
    return _then(_BusinessState(
      businesses: businesses == freezed
          ? _value.businesses
          : businesses as List<Business>,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      failure: failure == freezed ? _value.failure : failure as Option<Failure>,
    ));
  }
}

/// @nodoc
class _$_BusinessState with DiagnosticableTreeMixin implements _BusinessState {
  _$_BusinessState(
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
  final Option<Failure> failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusinessState.succes(businesses: $businesses, isFetching: $isFetching, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusinessState.succes'))
      ..add(DiagnosticsProperty('businesses', businesses))
      ..add(DiagnosticsProperty('isFetching', isFetching))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BusinessState &&
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
  _$BusinessStateCopyWith<_BusinessState> get copyWith =>
      __$BusinessStateCopyWithImpl<_BusinessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult succes(List<Business> businesses, bool isFetching,
            Option<Failure> failure),
  }) {
    assert(succes != null);
    return succes(businesses, isFetching, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(
        List<Business> businesses, bool isFetching, Option<Failure> failure),
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
    @required TResult succes(_BusinessState value),
  }) {
    assert(succes != null);
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_BusinessState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class _BusinessState implements BusinessState {
  factory _BusinessState(
      {@required List<Business> businesses,
      @required bool isFetching,
      @required Option<Failure> failure}) = _$_BusinessState;

  @override
  List<Business> get businesses;
  @override
  bool get isFetching;
  @override
  Option<Failure> get failure;
  @override
  @JsonKey(ignore: true)
  _$BusinessStateCopyWith<_BusinessState> get copyWith;
}
