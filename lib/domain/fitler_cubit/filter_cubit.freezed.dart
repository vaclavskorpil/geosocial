// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FilterStateTearOff {
  const _$FilterStateTearOff();

// ignore: unused_element
  _Succes succes({FilterDTO filter}) {
    return _Succes(
      filter: filter,
    );
  }

// ignore: unused_element
  _ApplyFilter applyFilter({FilterDTO filter}) {
    return _ApplyFilter(
      filter: filter,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FilterState = _$FilterStateTearOff();

/// @nodoc
mixin _$FilterState {
  FilterDTO get filter;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult succes(FilterDTO filter),
    @required TResult applyFilter(FilterDTO filter),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(FilterDTO filter),
    TResult applyFilter(FilterDTO filter),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_Succes value),
    @required TResult applyFilter(_ApplyFilter value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_Succes value),
    TResult applyFilter(_ApplyFilter value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res>;
  $Res call({FilterDTO filter});

  $FilterDTOCopyWith<$Res> get filter;
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;

  @override
  $Res call({
    Object filter = freezed,
  }) {
    return _then(_value.copyWith(
      filter: filter == freezed ? _value.filter : filter as FilterDTO,
    ));
  }

  @override
  $FilterDTOCopyWith<$Res> get filter {
    if (_value.filter == null) {
      return null;
    }
    return $FilterDTOCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc
abstract class _$SuccesCopyWith<$Res> implements $FilterStateCopyWith<$Res> {
  factory _$SuccesCopyWith(_Succes value, $Res Function(_Succes) then) =
      __$SuccesCopyWithImpl<$Res>;
  @override
  $Res call({FilterDTO filter});

  @override
  $FilterDTOCopyWith<$Res> get filter;
}

/// @nodoc
class __$SuccesCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements _$SuccesCopyWith<$Res> {
  __$SuccesCopyWithImpl(_Succes _value, $Res Function(_Succes) _then)
      : super(_value, (v) => _then(v as _Succes));

  @override
  _Succes get _value => super._value as _Succes;

  @override
  $Res call({
    Object filter = freezed,
  }) {
    return _then(_Succes(
      filter: filter == freezed ? _value.filter : filter as FilterDTO,
    ));
  }
}

/// @nodoc
class _$_Succes implements _Succes {
  const _$_Succes({this.filter});

  @override
  final FilterDTO filter;

  @override
  String toString() {
    return 'FilterState.succes(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Succes &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$SuccesCopyWith<_Succes> get copyWith =>
      __$SuccesCopyWithImpl<_Succes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult succes(FilterDTO filter),
    @required TResult applyFilter(FilterDTO filter),
  }) {
    assert(succes != null);
    assert(applyFilter != null);
    return succes(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(FilterDTO filter),
    TResult applyFilter(FilterDTO filter),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_Succes value),
    @required TResult applyFilter(_ApplyFilter value),
  }) {
    assert(succes != null);
    assert(applyFilter != null);
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_Succes value),
    TResult applyFilter(_ApplyFilter value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class _Succes implements FilterState {
  const factory _Succes({FilterDTO filter}) = _$_Succes;

  @override
  FilterDTO get filter;
  @override
  @JsonKey(ignore: true)
  _$SuccesCopyWith<_Succes> get copyWith;
}

/// @nodoc
abstract class _$ApplyFilterCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$ApplyFilterCopyWith(
          _ApplyFilter value, $Res Function(_ApplyFilter) then) =
      __$ApplyFilterCopyWithImpl<$Res>;
  @override
  $Res call({FilterDTO filter});

  @override
  $FilterDTOCopyWith<$Res> get filter;
}

/// @nodoc
class __$ApplyFilterCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements _$ApplyFilterCopyWith<$Res> {
  __$ApplyFilterCopyWithImpl(
      _ApplyFilter _value, $Res Function(_ApplyFilter) _then)
      : super(_value, (v) => _then(v as _ApplyFilter));

  @override
  _ApplyFilter get _value => super._value as _ApplyFilter;

  @override
  $Res call({
    Object filter = freezed,
  }) {
    return _then(_ApplyFilter(
      filter: filter == freezed ? _value.filter : filter as FilterDTO,
    ));
  }
}

/// @nodoc
class _$_ApplyFilter implements _ApplyFilter {
  const _$_ApplyFilter({this.filter});

  @override
  final FilterDTO filter;

  @override
  String toString() {
    return 'FilterState.applyFilter(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApplyFilter &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$ApplyFilterCopyWith<_ApplyFilter> get copyWith =>
      __$ApplyFilterCopyWithImpl<_ApplyFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult succes(FilterDTO filter),
    @required TResult applyFilter(FilterDTO filter),
  }) {
    assert(succes != null);
    assert(applyFilter != null);
    return applyFilter(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(FilterDTO filter),
    TResult applyFilter(FilterDTO filter),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (applyFilter != null) {
      return applyFilter(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_Succes value),
    @required TResult applyFilter(_ApplyFilter value),
  }) {
    assert(succes != null);
    assert(applyFilter != null);
    return applyFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_Succes value),
    TResult applyFilter(_ApplyFilter value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (applyFilter != null) {
      return applyFilter(this);
    }
    return orElse();
  }
}

abstract class _ApplyFilter implements FilterState {
  const factory _ApplyFilter({FilterDTO filter}) = _$_ApplyFilter;

  @override
  FilterDTO get filter;
  @override
  @JsonKey(ignore: true)
  _$ApplyFilterCopyWith<_ApplyFilter> get copyWith;
}
