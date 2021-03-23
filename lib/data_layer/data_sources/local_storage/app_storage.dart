import 'package:geosocial/common/constants/constatns.dart';
import 'package:geosocial/data_layer/entities/filter_dto.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppStorage {
  final _filterKey = "Filter";

  Future<void> saveFilter(FilterDTO filter) async {
    final Box box = Hive.box(Constants.filterBox);
    await box.put(_filterKey, filter);
  }


  Future<FilterDTO> getFilter() async {
    final Box box = Hive.box(Constants.filterBox);
    return box.get(_filterKey, defaultValue: FilterDTO.empty());
  }
}
