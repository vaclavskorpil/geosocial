import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/io/entities/category.dart';
import 'package:geosocial/io/entities/filter_dto.dart';
import 'package:geosocial/io/repository/filter_repository.dart';
import 'package:injectable/injectable.dart';

part 'filter_state.dart';
part 'filter_cubit.freezed.dart';

@injectable
class FilterCubit extends Cubit<FilterState> {
  final FilterRepository _filterRepo;

  FilterCubit(this._filterRepo) : super(FilterState.initial());

  void changeRadius(double newRadius) async {
    emit(
      state.copyWith(radius: newRadius),
    );
  }

  void changeLocation(String location) async {
    emit(
      state.copyWith(location: location),
    );
  }

void changeSearchTern(String searchTerm) async {
    emit(
      state.copyWith(filterQuery: searchTerm),
    );
  }

  void changePriceLevel(RangeValues values) async {
    emit(
      state.copyWith(priceLevel: values),
    );
  }

  void addCategory(Category category) async {
    state.categories.add(category);
    emit(
      state.copyWith(categories: [...state.categories]),
    );
  }

  void removeCategory(Category category) async {
    state.categories.remove(category);
    emit(
      state.copyWith(categories: [...state.categories]),
    );
  }

  void applyFilter() async {
    await _filterRepo.saveFilterAndPushToStream(
      FilterDTO(
        state.location,
        state.filterQuery,
        state.radius,
        FilterDTO.rangeToList(state.priceLevel),
        state.categories,
      ),
    );

    emit(state.copyWith(applyFilter: true));

    void loadFilter() async {
      var filter = await _filterRepo.getFilter();
      emit(FilterState.succes(
        filter.location,
        filter.filterQuery,
        filter.radius,
        filter.priceLevelRangeValue(),
        filter.categories,
        false,
      ));
    }
  }
}
