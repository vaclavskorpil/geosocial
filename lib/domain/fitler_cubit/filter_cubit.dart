import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/data_layer/entities/category.dart';
import 'package:geosocial/data_layer/entities/filter_dto.dart';
import 'package:geosocial/data_layer/repository/filter_repository.dart';

import 'package:injectable/injectable.dart';

part 'filter_state.dart';
part 'filter_cubit.freezed.dart';

@injectable
class FilterCubit extends Cubit<FilterState> {
  final FilterRepository _filterRepo;
  final TextEditingController locationTextEditingController;
  final TextEditingController filterTextEditingController;

  FilterCubit(this._filterRepo)
      : locationTextEditingController = TextEditingController(),
        filterTextEditingController = TextEditingController(),
        super(FilterState.succes(filter: _filterRepo.currentFilter)) {
    locationTextEditingController.text = _filterRepo.currentFilter.location;
    filterTextEditingController.text = _filterRepo.currentFilter.filterQuery;
  }

  void changeRadius(double newRadius) async {
    emit(
      FilterState.succes(filter: state.filter.copyWith(radius: newRadius)),
    );
  }

  void changeLocation(String location) async {
    emit(
      FilterState.succes(filter: state.filter.copyWith(location: location)),
    );
  }

  

  void changeSearchTerm(String searchTerm) async {
    emit(
      FilterState.succes(
          filter: state.filter.copyWith(filterQuery: searchTerm)),
    );
  }

  void changePriceLevel(RangeValues values) async {
    var priceLevel = FilterDTO.rangeToList(values);

    emit(
      FilterState.succes(filter: state.filter.copyWith(priceLevel: priceLevel)),
    );
  }

  void addCategory(Category category) async {
    state.filter.categories.add(category);
    emit(
      state.copyWith(),
    );
  }

  void removeCategory(Category category) async {
    state.filter.categories.remove(category);
    emit(
      state.copyWith(),
    );
  }

  void applyFilter() async {
    final filter = state.filter.copyWith(
      location: locationTextEditingController.text,
      filterQuery: filterTextEditingController.text,
    );

    _filterRepo.saveFilter(filter);
    print("FIlter applied ");
    emit(FilterState.applyFilter(filter: filter));
  }

  
}
