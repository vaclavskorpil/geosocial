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
  _FilterDto call(
      @HiveField(0) String location,
      @HiveField(1) String filterQuery,
      @HiveField(2) double radius,
      @HiveField(3) List<int> priceLevel,
      @HiveField(4) List<Category> categories) {
    return _FilterDto(
      location,
      filterQuery,
      radius,
      priceLevel,
      categories,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FilterDTO = _$FilterDTOTearOff();

/// @nodoc
mixin _$FilterDTO {
  @HiveField(0)
  String get location;
  @HiveField(1)
  String get filterQuery;
  @HiveField(2)
  double get radius;
  @HiveField(3)
  List<int> get priceLevel;
  @HiveField(4)
  List<Category> get categories;

  @JsonKey(ignore: true)
  $FilterDTOCopyWith<FilterDTO> get copyWith;
}

/// @nodoc
abstract class $FilterDTOCopyWith<$Res> {
  factory $FilterDTOCopyWith(FilterDTO value, $Res Function(FilterDTO) then) =
      _$FilterDTOCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String location,
      @HiveField(1) String filterQuery,
      @HiveField(2) double radius,
      @HiveField(3) List<int> priceLevel,
      @HiveField(4) List<Category> categories});
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
    Object priceLevel = freezed,
    Object categories = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed ? _value.location : location as String,
      filterQuery:
          filterQuery == freezed ? _value.filterQuery : filterQuery as String,
      radius: radius == freezed ? _value.radius : radius as double,
      priceLevel:
          priceLevel == freezed ? _value.priceLevel : priceLevel as List<int>,
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
      {@HiveField(0) String location,
      @HiveField(1) String filterQuery,
      @HiveField(2) double radius,
      @HiveField(3) List<int> priceLevel,
      @HiveField(4) List<Category> categories});
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
    Object priceLevel = freezed,
    Object categories = freezed,
  }) {
    return _then(_FilterDto(
      location == freezed ? _value.location : location as String,
      filterQuery == freezed ? _value.filterQuery : filterQuery as String,
      radius == freezed ? _value.radius : radius as double,
      priceLevel == freezed ? _value.priceLevel : priceLevel as List<int>,
      categories == freezed ? _value.categories : categories as List<Category>,
    ));
  }
}

@HiveType(typeId: 1, adapterName: 'FilterDTOHive')

/// @nodoc
class _$_FilterDto extends _FilterDto {
  const _$_FilterDto(
      @HiveField(0) this.location,
      @HiveField(1) this.filterQuery,
      @HiveField(2) this.radius,
      @HiveField(3) this.priceLevel,
      @HiveField(4) this.categories)
      : assert(location != null),
        assert(filterQuery != null),
        assert(radius != null),
        assert(priceLevel != null),
        assert(categories != null),
        super._();

  @override
  @HiveField(0)
  final String location;
  @override
  @HiveField(1)
  final String filterQuery;
  @override
  @HiveField(2)
  final double radius;
  @override
  @HiveField(3)
  final List<int> priceLevel;
  @override
  @HiveField(4)
  final List<Category> categories;

  @override
  String toString() {
    return 'FilterDTO(location: $location, filterQuery: $filterQuery, radius: $radius, priceLevel: $priceLevel, categories: $categories)';
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
            (identical(other.priceLevel, priceLevel) ||
                const DeepCollectionEquality()
                    .equals(other.priceLevel, priceLevel)) &&
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
      const DeepCollectionEquality().hash(priceLevel) ^
      const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$FilterDtoCopyWith<_FilterDto> get copyWith =>
      __$FilterDtoCopyWithImpl<_FilterDto>(this, _$identity);
}

abstract class _FilterDto extends FilterDTO {
  const _FilterDto._() : super._();
  const factory _FilterDto(
      @HiveField(0) String location,
      @HiveField(1) String filterQuery,
      @HiveField(2) double radius,
      @HiveField(3) List<int> priceLevel,
      @HiveField(4) List<Category> categories) = _$_FilterDto;

  @override
  @HiveField(0)
  String get location;
  @override
  @HiveField(1)
  String get filterQuery;
  @override
  @HiveField(2)
  double get radius;
  @override
  @HiveField(3)
  List<int> get priceLevel;
  @override
  @HiveField(4)
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$FilterDtoCopyWith<_FilterDto> get copyWith;
}
