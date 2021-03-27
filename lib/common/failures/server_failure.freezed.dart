// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'server_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ServerFailureTearOff {
  const _$ServerFailureTearOff();

// ignore: unused_element
  _ServerError serverError() {
    return const _ServerError();
  }

// ignore: unused_element
  _NoInternetConnection noInternetConnection() {
    return const _NoInternetConnection();
  }
}

/// @nodoc
// ignore: unused_element
const $ServerFailure = _$ServerFailureTearOff();

/// @nodoc
mixin _$ServerFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult noInternetConnection(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult noInternetConnection(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(_ServerError value),
    @required TResult noInternetConnection(_NoInternetConnection value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(_ServerError value),
    TResult noInternetConnection(_NoInternetConnection value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._value, this._then);

  final ServerFailure _value;
  // ignore: unused_field
  final $Res Function(ServerFailure) _then;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$ServerFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc
class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'ServerFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult noInternetConnection(),
  }) {
    assert(serverError != null);
    assert(noInternetConnection != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult noInternetConnection(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(_ServerError value),
    @required TResult noInternetConnection(_NoInternetConnection value),
  }) {
    assert(serverError != null);
    assert(noInternetConnection != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(_ServerError value),
    TResult noInternetConnection(_NoInternetConnection value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ServerFailure {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$NoInternetConnectionCopyWith<$Res> {
  factory _$NoInternetConnectionCopyWith(_NoInternetConnection value,
          $Res Function(_NoInternetConnection) then) =
      __$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoInternetConnectionCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res>
    implements _$NoInternetConnectionCopyWith<$Res> {
  __$NoInternetConnectionCopyWithImpl(
      _NoInternetConnection _value, $Res Function(_NoInternetConnection) _then)
      : super(_value, (v) => _then(v as _NoInternetConnection));

  @override
  _NoInternetConnection get _value => super._value as _NoInternetConnection;
}

/// @nodoc
class _$_NoInternetConnection implements _NoInternetConnection {
  const _$_NoInternetConnection();

  @override
  String toString() {
    return 'ServerFailure.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult noInternetConnection(),
  }) {
    assert(serverError != null);
    assert(noInternetConnection != null);
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult noInternetConnection(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(_ServerError value),
    @required TResult noInternetConnection(_NoInternetConnection value),
  }) {
    assert(serverError != null);
    assert(noInternetConnection != null);
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(_ServerError value),
    TResult noInternetConnection(_NoInternetConnection value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection implements ServerFailure {
  const factory _NoInternetConnection() = _$_NoInternetConnection;
}
