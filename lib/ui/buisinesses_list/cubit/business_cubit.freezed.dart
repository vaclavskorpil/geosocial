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
  _BusinessState succes({@required List<Business> businesses}) {
    return _BusinessState(
      businesses: businesses,
    );
  }

// ignore: unused_element
  Loading loading() {
    return Loading();
  }

// ignore: unused_element
  Failure failure() {
    return Failure();
  }
}

/// @nodoc
// ignore: unused_element
const $BusinessState = _$BusinessStateTearOff();

/// @nodoc
mixin _$BusinessState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult succes(List<Business> businesses),
    @required TResult loading(),
    @required TResult failure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(List<Business> businesses),
    TResult loading(),
    TResult failure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_BusinessState value),
    @required TResult loading(Loading value),
    @required TResult failure(Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_BusinessState value),
    TResult loading(Loading value),
    TResult failure(Failure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BusinessStateCopyWith<$Res> {
  factory $BusinessStateCopyWith(
          BusinessState value, $Res Function(BusinessState) then) =
      _$BusinessStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BusinessStateCopyWithImpl<$Res>
    implements $BusinessStateCopyWith<$Res> {
  _$BusinessStateCopyWithImpl(this._value, this._then);

  final BusinessState _value;
  // ignore: unused_field
  final $Res Function(BusinessState) _then;
}

/// @nodoc
abstract class _$BusinessStateCopyWith<$Res> {
  factory _$BusinessStateCopyWith(
          _BusinessState value, $Res Function(_BusinessState) then) =
      __$BusinessStateCopyWithImpl<$Res>;
  $Res call({List<Business> businesses});
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
  }) {
    return _then(_BusinessState(
      businesses: businesses == freezed
          ? _value.businesses
          : businesses as List<Business>,
    ));
  }
}

/// @nodoc
class _$_BusinessState with DiagnosticableTreeMixin implements _BusinessState {
  _$_BusinessState({@required this.businesses}) : assert(businesses != null);

  @override
  final List<Business> businesses;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusinessState.succes(businesses: $businesses)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusinessState.succes'))
      ..add(DiagnosticsProperty('businesses', businesses));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BusinessState &&
            (identical(other.businesses, businesses) ||
                const DeepCollectionEquality()
                    .equals(other.businesses, businesses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(businesses);

  @JsonKey(ignore: true)
  @override
  _$BusinessStateCopyWith<_BusinessState> get copyWith =>
      __$BusinessStateCopyWithImpl<_BusinessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult succes(List<Business> businesses),
    @required TResult loading(),
    @required TResult failure(),
  }) {
    assert(succes != null);
    assert(loading != null);
    assert(failure != null);
    return succes(businesses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(List<Business> businesses),
    TResult loading(),
    TResult failure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(businesses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_BusinessState value),
    @required TResult loading(Loading value),
    @required TResult failure(Failure value),
  }) {
    assert(succes != null);
    assert(loading != null);
    assert(failure != null);
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_BusinessState value),
    TResult loading(Loading value),
    TResult failure(Failure value),
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
  factory _BusinessState({@required List<Business> businesses}) =
      _$_BusinessState;

  List<Business> get businesses;
  @JsonKey(ignore: true)
  _$BusinessStateCopyWith<_BusinessState> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$BusinessStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading with DiagnosticableTreeMixin implements Loading {
  _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusinessState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BusinessState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult succes(List<Business> businesses),
    @required TResult loading(),
    @required TResult failure(),
  }) {
    assert(succes != null);
    assert(loading != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(List<Business> businesses),
    TResult loading(),
    TResult failure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_BusinessState value),
    @required TResult loading(Loading value),
    @required TResult failure(Failure value),
  }) {
    assert(succes != null);
    assert(loading != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_BusinessState value),
    TResult loading(Loading value),
    TResult failure(Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BusinessState {
  factory Loading() = _$Loading;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> extends _$BusinessStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;
}

/// @nodoc
class _$Failure with DiagnosticableTreeMixin implements Failure {
  _$Failure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusinessState.failure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BusinessState.failure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult succes(List<Business> businesses),
    @required TResult loading(),
    @required TResult failure(),
  }) {
    assert(succes != null);
    assert(loading != null);
    assert(failure != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(List<Business> businesses),
    TResult loading(),
    TResult failure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_BusinessState value),
    @required TResult loading(Loading value),
    @required TResult failure(Failure value),
  }) {
    assert(succes != null);
    assert(loading != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_BusinessState value),
    TResult loading(Loading value),
    TResult failure(Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements BusinessState {
  factory Failure() = _$Failure;
}
