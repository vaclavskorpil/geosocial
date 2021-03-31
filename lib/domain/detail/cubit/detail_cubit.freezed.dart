// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DetailStateTearOff {
  const _$DetailStateTearOff();

// ignore: unused_element
  _DetailLoading detailLoading() {
    return const _DetailLoading();
  }

// ignore: unused_element
  _Sucess succes(Business business) {
    return _Sucess(
      business,
    );
  }

// ignore: unused_element
  _LoadingFailed loadingFailed(ServerFailure failure) {
    return _LoadingFailed(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DetailState = _$DetailStateTearOff();

/// @nodoc
mixin _$DetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult detailLoading(),
    @required TResult succes(Business business),
    @required TResult loadingFailed(ServerFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult detailLoading(),
    TResult succes(Business business),
    TResult loadingFailed(ServerFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult detailLoading(_DetailLoading value),
    @required TResult succes(_Sucess value),
    @required TResult loadingFailed(_LoadingFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult detailLoading(_DetailLoading value),
    TResult succes(_Sucess value),
    TResult loadingFailed(_LoadingFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res> implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  final DetailState _value;
  // ignore: unused_field
  final $Res Function(DetailState) _then;
}

/// @nodoc
abstract class _$DetailLoadingCopyWith<$Res> {
  factory _$DetailLoadingCopyWith(
          _DetailLoading value, $Res Function(_DetailLoading) then) =
      __$DetailLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$DetailLoadingCopyWithImpl<$Res> extends _$DetailStateCopyWithImpl<$Res>
    implements _$DetailLoadingCopyWith<$Res> {
  __$DetailLoadingCopyWithImpl(
      _DetailLoading _value, $Res Function(_DetailLoading) _then)
      : super(_value, (v) => _then(v as _DetailLoading));

  @override
  _DetailLoading get _value => super._value as _DetailLoading;
}

/// @nodoc
class _$_DetailLoading implements _DetailLoading {
  const _$_DetailLoading();

  @override
  String toString() {
    return 'DetailState.detailLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult detailLoading(),
    @required TResult succes(Business business),
    @required TResult loadingFailed(ServerFailure failure),
  }) {
    assert(detailLoading != null);
    assert(succes != null);
    assert(loadingFailed != null);
    return detailLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult detailLoading(),
    TResult succes(Business business),
    TResult loadingFailed(ServerFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (detailLoading != null) {
      return detailLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult detailLoading(_DetailLoading value),
    @required TResult succes(_Sucess value),
    @required TResult loadingFailed(_LoadingFailed value),
  }) {
    assert(detailLoading != null);
    assert(succes != null);
    assert(loadingFailed != null);
    return detailLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult detailLoading(_DetailLoading value),
    TResult succes(_Sucess value),
    TResult loadingFailed(_LoadingFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (detailLoading != null) {
      return detailLoading(this);
    }
    return orElse();
  }
}

abstract class _DetailLoading implements DetailState {
  const factory _DetailLoading() = _$_DetailLoading;
}

/// @nodoc
abstract class _$SucessCopyWith<$Res> {
  factory _$SucessCopyWith(_Sucess value, $Res Function(_Sucess) then) =
      __$SucessCopyWithImpl<$Res>;
  $Res call({Business business});

  $BusinessCopyWith<$Res> get business;
}

/// @nodoc
class __$SucessCopyWithImpl<$Res> extends _$DetailStateCopyWithImpl<$Res>
    implements _$SucessCopyWith<$Res> {
  __$SucessCopyWithImpl(_Sucess _value, $Res Function(_Sucess) _then)
      : super(_value, (v) => _then(v as _Sucess));

  @override
  _Sucess get _value => super._value as _Sucess;

  @override
  $Res call({
    Object business = freezed,
  }) {
    return _then(_Sucess(
      business == freezed ? _value.business : business as Business,
    ));
  }

  @override
  $BusinessCopyWith<$Res> get business {
    if (_value.business == null) {
      return null;
    }
    return $BusinessCopyWith<$Res>(_value.business, (value) {
      return _then(_value.copyWith(business: value));
    });
  }
}

/// @nodoc
class _$_Sucess implements _Sucess {
  const _$_Sucess(this.business) : assert(business != null);

  @override
  final Business business;

  @override
  String toString() {
    return 'DetailState.succes(business: $business)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sucess &&
            (identical(other.business, business) ||
                const DeepCollectionEquality()
                    .equals(other.business, business)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(business);

  @JsonKey(ignore: true)
  @override
  _$SucessCopyWith<_Sucess> get copyWith =>
      __$SucessCopyWithImpl<_Sucess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult detailLoading(),
    @required TResult succes(Business business),
    @required TResult loadingFailed(ServerFailure failure),
  }) {
    assert(detailLoading != null);
    assert(succes != null);
    assert(loadingFailed != null);
    return succes(business);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult detailLoading(),
    TResult succes(Business business),
    TResult loadingFailed(ServerFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(business);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult detailLoading(_DetailLoading value),
    @required TResult succes(_Sucess value),
    @required TResult loadingFailed(_LoadingFailed value),
  }) {
    assert(detailLoading != null);
    assert(succes != null);
    assert(loadingFailed != null);
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult detailLoading(_DetailLoading value),
    TResult succes(_Sucess value),
    TResult loadingFailed(_LoadingFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class _Sucess implements DetailState {
  const factory _Sucess(Business business) = _$_Sucess;

  Business get business;
  @JsonKey(ignore: true)
  _$SucessCopyWith<_Sucess> get copyWith;
}

/// @nodoc
abstract class _$LoadingFailedCopyWith<$Res> {
  factory _$LoadingFailedCopyWith(
          _LoadingFailed value, $Res Function(_LoadingFailed) then) =
      __$LoadingFailedCopyWithImpl<$Res>;
  $Res call({ServerFailure failure});

  $ServerFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadingFailedCopyWithImpl<$Res> extends _$DetailStateCopyWithImpl<$Res>
    implements _$LoadingFailedCopyWith<$Res> {
  __$LoadingFailedCopyWithImpl(
      _LoadingFailed _value, $Res Function(_LoadingFailed) _then)
      : super(_value, (v) => _then(v as _LoadingFailed));

  @override
  _LoadingFailed get _value => super._value as _LoadingFailed;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadingFailed(
      failure == freezed ? _value.failure : failure as ServerFailure,
    ));
  }

  @override
  $ServerFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ServerFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadingFailed implements _LoadingFailed {
  const _$_LoadingFailed(this.failure) : assert(failure != null);

  @override
  final ServerFailure failure;

  @override
  String toString() {
    return 'DetailState.loadingFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingFailed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadingFailedCopyWith<_LoadingFailed> get copyWith =>
      __$LoadingFailedCopyWithImpl<_LoadingFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult detailLoading(),
    @required TResult succes(Business business),
    @required TResult loadingFailed(ServerFailure failure),
  }) {
    assert(detailLoading != null);
    assert(succes != null);
    assert(loadingFailed != null);
    return loadingFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult detailLoading(),
    TResult succes(Business business),
    TResult loadingFailed(ServerFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingFailed != null) {
      return loadingFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult detailLoading(_DetailLoading value),
    @required TResult succes(_Sucess value),
    @required TResult loadingFailed(_LoadingFailed value),
  }) {
    assert(detailLoading != null);
    assert(succes != null);
    assert(loadingFailed != null);
    return loadingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult detailLoading(_DetailLoading value),
    TResult succes(_Sucess value),
    TResult loadingFailed(_LoadingFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingFailed != null) {
      return loadingFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadingFailed implements DetailState {
  const factory _LoadingFailed(ServerFailure failure) = _$_LoadingFailed;

  ServerFailure get failure;
  @JsonKey(ignore: true)
  _$LoadingFailedCopyWith<_LoadingFailed> get copyWith;
}
