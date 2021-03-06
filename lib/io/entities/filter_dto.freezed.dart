// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'filter_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FilterDTOTearOff {
  const _$FilterDTOTearOff();

// ignore: unused_element
  _FilterDto call(String location, String filterQuery, double radius,
      List<Category> categories) {
    return _FilterDto(
      location,
      filterQuery,
      radius,
      categories,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FilterDTO = _$FilterDTOTearOff();

/// @nodoc
mixin _$FilterDTO {
  String get location;
  String get filterQuery;
  double get radius;
  List<Category> get categories;

  @JsonKey(ignore: true)
  $FilterDTOCopyWith<FilterDTO> get copyWith;
}

/// @nodoc
abstract class $FilterDTOCopyWith<$Res> {
  factory $FilterDTOCopyWith(FilterDTO value, $Res Function(FilterDTO) then) =
      _$FilterDTOCopyWithImpl<$Res>;
  $Res call(
      {String location,
      String filterQuery,
      double radius,
      List<Category> categories});
}

/// @nodoc
class _$FilterDTOCopyWithImpl<$Res> implements $FilterDTOCopyWith<$Res> {
  _$FilterDTOCopyWithImpl(this._value, this._then);

  final FilterDTO _value;
  // ignore: unused_field
  final $Res Function(FilterDTO) _then;

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
abstract class _$FilterDtoCopyWith<$Res> implements $FilterDTOCopyWith<$Res> {
  factory _$FilterDtoCopyWith(
          _FilterDto value, $Res Function(_FilterDto) then) =
      __$FilterDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String location,
      String filterQuery,
      double radius,
      List<Category> categories});
}

/// @nodoc
class __$FilterDtoCopyWithImpl<$Res> extends _$FilterDTOCopyWithImpl<$Res>
    implements _$FilterDtoCopyWith<$Res> {
  __$FilterDtoCopyWithImpl(_FilterDto _value, $Res Function(_FilterDto) _then)
      : super(_value, (v) => _then(v as _FilterDto));

  @override
  _FilterDto get _value => super._value as _FilterDto;

  @override
  $Res call({
    Object location = freezed,
    Object filterQuery = freezed,
    Object radius = freezed,
    Object categories = freezed,
  }) {
    return _then(_FilterDto(
      location == freezed ? _value.location : location as String,
      filterQuery == freezed ? _value.filterQuery : filterQuery as String,
      radius == freezed ? _value.radius : radius as double,
      categories == freezed ? _value.categories : categories as List<Category>,
    ));
  }
}

/// @nodoc
class _$_FilterDto implements _FilterDto {
  _$_FilterDto(this.location, this.filterQuery, this.radius, this.categories)
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
    return 'FilterDTO(location: $location, filterQuery: $filterQuery, radius: $radius, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterDto &&
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
  _$FilterDtoCopyWith<_FilterDto> get copyWith =>
      __$FilterDtoCopyWithImpl<_FilterDto>(this, _$identity);
}

abstract class _FilterDto implements FilterDTO {
  factory _FilterDto(String location, String filterQuery, double radius,
      List<Category> categories) = _$_FilterDto;

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
  _$FilterDtoCopyWith<_FilterDto> get copyWith;
}
