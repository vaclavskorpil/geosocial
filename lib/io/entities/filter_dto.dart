

import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';

part 'filter_dto.freezed.dart';

@freezed
abstract class FilterDTO with _$FilterDTO{

  factory FilterDTO(
    String location,
    String filterQuery,
    double radius,
    List<Category> categories,
  ) = _FilterDto;


}