import 'dart:async';

import 'package:geosocial/datalayer/data_providers/local_storage/app_storage.dart';
import 'package:geosocial/datalayer/entities/filter_dto.dart';
import 'package:injectable/injectable.dart';

abstract class FilterRepository {
  Stream<FilterDTO> filterStream;

  Future<void> saveFilter(FilterDTO filter);

  Future<void> saveFilterAndPushToStream(FilterDTO filter);

  Future<FilterDTO> getFilter();
}

@LazySingleton(as: FilterRepository)
class FilterRepositoryImpl extends FilterRepository {
  final StreamController<FilterDTO> _filterStream =
      StreamController<FilterDTO>();

  final AppStorage _appStorage;
  FilterRepositoryImpl(this._appStorage) {
    _filterStream.add(FilterDTO.empty());
    // _filterStream.add(await getFilter());
  }

  @override
  Stream<FilterDTO> get filterStream => _filterStream.stream;

  @override
  Future<FilterDTO> getFilter() {
    return _appStorage.getFilter();
  }

  @override
  Future<void> saveFilter(FilterDTO filter) {
    return _appStorage.saveFilter(filter);
  }

  @override
  Future<void> saveFilterAndPushToStream(FilterDTO filter) {
    _filterStream.add(filter);
    //  return saveFilter(filter);
  }
}
