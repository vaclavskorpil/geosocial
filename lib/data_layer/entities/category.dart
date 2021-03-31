import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
abstract class Category with _$Category {
  @HiveType(typeId: 4, adapterName: "CategoryAdapter")
 factory Category(
    @HiveField(0) String title,
    @HiveField(1) String alias,
  ) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
