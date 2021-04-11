import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:whereisthefood/data_layer/data_sources/local_storage/app_storage.dart';
import 'package:whereisthefood/data_layer/entities/filter_dto.dart';

abstract class FilterRepository {
  FilterDTO currentFilter;

  void saveFilter(FilterDTO filter);

  FilterDTO getFilter();
}

@LazySingleton(as: FilterRepository)
class FilterRepositoryImpl extends FilterRepository {
  FilterDTO _currentFilter;

  final AppStorage _appStorage;

  FilterRepositoryImpl(this._appStorage){
    _loadInitialFilter();
  }

  @override
  FilterDTO get currentFilter => _currentFilter;

  @override
  FilterDTO getFilter() {
    return _appStorage.getFilter();
  }

  @override
  void saveFilter(FilterDTO filter) {
    _currentFilter = filter;
    return _appStorage.saveFilter(filter);
  }

  void _loadInitialFilter() {
    _currentFilter =  getFilter() ?? FilterDTO.empty();
  }
}
