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
  _Succes succes(
      {FilterDTO filter,
      bool isValid = false,
      Option<Failure> failure = const None(),
      bool applyFilter = false}) {
    return _Succes(
      filter: filter,
      isValid: isValid,
      failure: failure,
      applyFilter: applyFilter,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FilterState = _$FilterStateTearOff();

/// @nodoc
mixin _$FilterState {
  FilterDTO get filter;
  bool get isValid;
  Option<Failure> get failure;
  bool get applyFilter;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult succes(FilterDTO filter, bool isValid, Option<Failure> failure,
            bool applyFilter),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(FilterDTO filter, bool isValid, Option<Failure> failure,
        bool applyFilter),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_Succes value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_Succes value),
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
  $Res call(
      {FilterDTO filter,
      bool isValid,
      Option<Failure> failure,
      bool applyFilter});

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
    Object isValid = freezed,
    Object failure = freezed,
    Object applyFilter = freezed,
  }) {
    return _then(_value.copyWith(
      filter: filter == freezed ? _value.filter : filter as FilterDTO,
      isValid: isValid == freezed ? _value.isValid : isValid as bool,
      failure: failure == freezed ? _value.failure : failure as Option<Failure>,
      applyFilter:
          applyFilter == freezed ? _value.applyFilter : applyFilter as bool,
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
  $Res call(
      {FilterDTO filter,
      bool isValid,
      Option<Failure> failure,
      bool applyFilter});

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
    Object isValid = freezed,
    Object failure = freezed,
    Object applyFilter = freezed,
  }) {
    return _then(_Succes(
      filter: filter == freezed ? _value.filter : filter as FilterDTO,
      isValid: isValid == freezed ? _value.isValid : isValid as bool,
      failure: failure == freezed ? _value.failure : failure as Option<Failure>,
      applyFilter:
          applyFilter == freezed ? _value.applyFilter : applyFilter as bool,
    ));
  }
}

/// @nodoc
class _$_Succes implements _Succes {
  const _$_Succes(
      {this.filter,
      this.isValid = false,
      this.failure = const None(),
      this.applyFilter = false})
      : assert(isValid != null),
        assert(failure != null),
        assert(applyFilter != null);

  @override
  final FilterDTO filter;
  @JsonKey(defaultValue: false)
  @override
  final bool isValid;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Failure> failure;
  @JsonKey(defaultValue: false)
  @override
  final bool applyFilter;

  @override
  String toString() {
    return 'FilterState.succes(filter: $filter, isValid: $isValid, failure: $failure, applyFilter: $applyFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Succes &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)) &&
            (identical(other.isValid, isValid) ||
                const DeepCollectionEquality()
                    .equals(other.isValid, isValid)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.applyFilter, applyFilter) ||
                const DeepCollectionEquality()
                    .equals(other.applyFilter, applyFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filter) ^
      const DeepCollectionEquality().hash(isValid) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(applyFilter);

  @JsonKey(ignore: true)
  @override
  _$SuccesCopyWith<_Succes> get copyWith =>
      __$SuccesCopyWithImpl<_Succes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult succes(FilterDTO filter, bool isValid, Option<Failure> failure,
            bool applyFilter),
  }) {
    assert(succes != null);
    return succes(filter, isValid, failure, applyFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(FilterDTO filter, bool isValid, Option<Failure> failure,
        bool applyFilter),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(filter, isValid, failure, applyFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succes(_Succes value),
  }) {
    assert(succes != null);
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succes(_Succes value),
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
  const factory _Succes(
      {FilterDTO filter,
      bool isValid,
      Option<Failure> failure,
      bool applyFilter}) = _$_Succes;

  @override
  FilterDTO get filter;
  @override
  bool get isValid;
  @override
  Option<Failure> get failure;
  @override
  bool get applyFilter;
  @override
  @JsonKey(ignore: true)
  _$SuccesCopyWith<_Succes> get copyWith;
}
