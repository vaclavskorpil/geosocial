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
  _Succes succes(String location, String filterQuery, double radius,
      List<Category> categories) {
    return _Succes(
      location,
      filterQuery,
      radius,
      categories,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FilterState = _$FilterStateTearOff();

/// @nodoc
mixin _$FilterState {
  String get location;
  String get filterQuery;
  double get radius;
  List<Category> get categories;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult succes(String location, String filterQuery, double radius,
            List<Category> categories),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(String location, String filterQuery, double radius,
        List<Category> categories),
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
      {String location,
      String filterQuery,
      double radius,
      List<Category> categories});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;

  @override
  $Res call({
    Object location = freezed,
    Object filterQuery = freezed,
    Object radius = freezed,
    Object categories = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed ? _value.location : location as String,
      filterQuery:
          filterQuery == freezed ? _value.filterQuery : filterQuery as String,
      radius: radius == freezed ? _value.radius : radius as double,
      categories: categories == freezed
          ? _value.categories
          : categories as List<Category>,
    ));
  }
}

/// @nodoc
abstract class _$SuccesCopyWith<$Res> implements $FilterStateCopyWith<$Res> {
  factory _$SuccesCopyWith(_Succes value, $Res Function(_Succes) then) =
      __$SuccesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String location,
      String filterQuery,
      double radius,
      List<Category> categories});
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
    Object location = freezed,
    Object filterQuery = freezed,
    Object radius = freezed,
    Object categories = freezed,
  }) {
    return _then(_Succes(
      location == freezed ? _value.location : location as String,
      filterQuery == freezed ? _value.filterQuery : filterQuery as String,
      radius == freezed ? _value.radius : radius as double,
      categories == freezed ? _value.categories : categories as List<Category>,
    ));
  }
}

/// @nodoc
class _$_Succes implements _Succes {
  const _$_Succes(this.location, this.filterQuery, this.radius, this.categories)
      : assert(location != null),
        assert(filterQuery != null),
        assert(radius != null),
        assert(categories != null);

  @override
  final String location;
  @override
  final String filterQuery;
  @override
  final double radius;
  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'FilterState.succes(location: $location, filterQuery: $filterQuery, radius: $radius, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Succes &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.filterQuery, filterQuery) ||
                const DeepCollectionEquality()
                    .equals(other.filterQuery, filterQuery)) &&
            (identical(other.radius, radius) ||
                const DeepCollectionEquality().equals(other.radius, radius)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(filterQuery) ^
      const DeepCollectionEquality().hash(radius) ^
      const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$SuccesCopyWith<_Succes> get copyWith =>
      __$SuccesCopyWithImpl<_Succes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult succes(String location, String filterQuery, double radius,
            List<Category> categories),
  }) {
    assert(succes != null);
    return succes(location, filterQuery, radius, categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succes(String location, String filterQuery, double radius,
        List<Category> categories),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succes != null) {
      return succes(location, filterQuery, radius, categories);
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
  const factory _Succes(String location, String filterQuery, double radius,
      List<Category> categories) = _$_Succes;

  @override
  String get location;
  @override
  String get filterQuery;
  @override
  double get radius;
  @override
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$SuccesCopyWith<_Succes> get copyWith;
}
