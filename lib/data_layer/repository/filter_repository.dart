import 'dart:async';

import 'package:whereisthefood/data_layer/data_sources/local_storage/app_storage.dart';
import 'package:whereisthefood/data_layer/entities/filter_dto.dart';

abstract class FilterRepository {
  FilterDTO currentFilter;

  Future<void> saveFilter(FilterDTO filter);

  Future<FilterDTO> getFilter();
}

// lazy singleton registered in modules
class FilterRepositoryImpl extends FilterRepository {
  FilterDTO _currentFilter;

  final AppStorage _appStorage;

  FilterRepositoryImpl(this._appStorage);

  @override
  FilterDTO get currentFilter => _currentFilter;

  @override
  Future<FilterDTO> getFilter() {
    return _appStorage.getFilter();
  }

  @override
  Future<void> saveFilter(FilterDTO filter) {
    _currentFilter = filter;
    return _appStorage.saveFilter(filter);
  }

  void _loadInitialFilter() async {
    _currentFilter = await getFilter() ?? FilterDTO.empty();
  }

  //factory method
  static Future<FilterRepository> createFilterRepository(
      AppStorage appStorage) async {
    return FilterRepositoryImpl(appStorage).._loadInitialFilter();
  }
}
