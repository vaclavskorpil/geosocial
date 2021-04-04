import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/common/failures/failure.dart';
import 'package:geosocial/data_layer/entities/category.dart';
import 'package:geosocial/data_layer/entities/filter_dto.dart';
import 'package:geosocial/data_layer/repository/filter_repository.dart';
import 'package:geosocial/data_layer/services/location_service/location_service.dart';

import 'package:injectable/injectable.dart';

part 'filter_state.dart';
part 'filter_cubit.freezed.dart';

@injectable
class FilterCubit extends Cubit<FilterState> {
  final FilterRepository _filterRepo;
  final TextEditingController locationTextEditingController;
  final TextEditingController filterTextEditingController;
  final LocationService _locationService;

  FilterCubit(this._filterRepo, this._locationService)
      : locationTextEditingController = TextEditingController(),
        filterTextEditingController = TextEditingController(),
        super(FilterState.succes(
            filter: _filterRepo.currentFilter, isValid: true)) {
    locationTextEditingController.text = _filterRepo.currentFilter.location;
    filterTextEditingController.text = _filterRepo.currentFilter.filterQuery;

    // listen to text changes, if text is not empty
    // emit valid = true
    locationTextEditingController.addListener(() {
      if (locationTextEditingController.text.isNotEmpty) {
        emit(state.copyWith(isValid: true));
      }
    });
  }

  void changeRadius(double newRadius) async {
    emit(
      state.copyWith(
          filter: state.filter.copyWith(radius: newRadius), failure: none()),
    );
  }

  void changeLocation(String location) async {
    emit(
      state.copyWith(
          filter: state.filter.copyWith(location: location), failure: none()),
    );
  }

  void changeSearchTerm(String searchTerm) async {
    emit(
      state.copyWith(
        filter: state.filter.copyWith(filterQuery: searchTerm),
        failure: none(),
      ),
    );
  }

  void changePriceLevel(RangeValues values) async {
    var priceLevel = FilterDTO.rangeToList(values);

    emit(state.copyWith(
        filter: state.filter.copyWith(priceLevel: priceLevel),
        failure: none()));
  }

  void addCategory(Category category) async {
    state.filter.categories.add(category);
    emit(
      state.copyWith(failure: none()),
    );
  }

  void removeCategory(Category category) async {
    state.filter.categories.remove(category);
    emit(
      state.copyWith(failure: none()),
    );
  }

  void useMyLocation(bool useLocation) async {
    if (useLocation) {
      //check for permitions
      var canUseLocation = await _locationService.hasPermissions();
      emit(state.copyWith(
          filter: state.filter.copyWith(
        useMyLocation: canUseLocation,
      )));

      emit(state.copyWith(isValid: _validateLocation()));
    } else {
      emit(
        state.copyWith(
          filter: state.filter.copyWith(useMyLocation: false),
        ),
      );
    }
  }

  void applyFilter() async {
    // validate if text is not empty and useMyLocation is false

    if (!_validateLocation()) {
      emit(state.copyWith(isValid: false));
      return;
    }

    final filter = state.filter.copyWith(
      location: locationTextEditingController.text,
      filterQuery: filterTextEditingController.text,
    );

    _filterRepo.saveFilter(filter);
    emit(state.copyWith(failure: none(), applyFilter: true));
  }

  //returns true if is valid
  bool _validateLocation() {
    return locationTextEditingController.text.isNotEmpty ||
        state.filter.useMyLocation;
  }
}
