import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'category.dart';

part 'filter_dto.freezed.dart';
part 'filter_dto.g.dart';

@freezed
abstract class FilterDTO with _$FilterDTO {
  const FilterDTO._();

  @HiveType(typeId: 2, adapterName: "FilterDTOAdapter")
  factory FilterDTO(
    @HiveField(0) String location,
    @HiveField(1) String filterQuery,
    @HiveField(2) double radius,
    @HiveField(3) List<int> priceLevel,
    @HiveField(4) List<Category> categories,
    @HiveField(5) bool useMyLocation,
  ) = _FilterDto;

  factory FilterDTO.empty() =>
      FilterDTO("", "", 1500, [1, 2, 3, 4], [], false);

  static List<int> rangeToList(RangeValues range) {
    final result = <int>[];
    for (double i = range.start; i <= range.end; i++) {
      result.add(i.toInt());
    }
    return result;
  }

  static RangeValues listToRange(List<int> intList) {
    return RangeValues(intList.first.toDouble(), intList.last.toDouble());
  }

  RangeValues priceLevelRangeValue() {
    return listToRange(priceLevel);
  }

  String categoriesString() {
    return categories.map((e) => e.alias).join(",");
  }

  String priceLevelToString() {
    return priceLevel.join(",");
  }
}
