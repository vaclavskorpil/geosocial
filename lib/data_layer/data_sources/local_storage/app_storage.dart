import 'package:whereisthefood/common/constants/constatns.dart';
import 'package:whereisthefood/data_layer/entities/filter_dto.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppStorage {
  final _filterKey = "Filter";

  void saveFilter(FilterDTO filter)  {
    final Box box = Hive.box(Constants.filterBox);
    box.put(_filterKey, filter);
  }


  FilterDTO getFilter() {
    final Box box = Hive.box(Constants.filterBox);
    return box.get(_filterKey, defaultValue: FilterDTO.empty());
  }
}
