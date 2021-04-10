import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whereisthefood/data_layer/entities/business.dart';
import 'package:whereisthefood/data_layer/entities/filter_dto.dart';
import 'package:whereisthefood/data_layer/repository/business_repository.dart';
import 'package:whereisthefood/data_layer/repository/filter_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:whereisthefood/common/failures/server_failure.dart';

part 'poi_state.dart';
part 'poi_cubit.freezed.dart';

@lazySingleton
class POICubit extends Cubit<POIState> {
  final BusinessRepository _businessRepo;
  final FilterRepository _filterRepo;

  final fetchItemLimit = 50;

  FilterDTO get _filter => _filterRepo.currentFilter;

  POICubit(this._businessRepo, this._filterRepo) : super(POIState.initial());

  void fetchBusinesses() async {
    _fetchBusinesses(_filter, state.businesses.length);
  }

  void fetchNewBusinesses() async {
    _fetchBusinessesInitial(_filter);
  }

  void _fetchBusinessesInitial(FilterDTO filter) async {
    emit(state.copyWith(isFetching: true));

    final failureOrBusinesses =
        await _businessRepo.getBusinesses(filter, fetchItemLimit, 0);

    failureOrBusinesses.fold(
      (failure) => emit(
        state.copyWith(
          isFetching: false,
          failure: some(failure),
        ),
      ),
      (businesses) => emit(
        POIState.succes(
          businesses: businesses,
          isFetching: false,
          failure: none(),
        ),
      ),
    );
  }

  void _fetchBusinesses(FilterDTO filter, int size) async {
    emit(state.copyWith(isFetching: true));

    final failureOrBusinesses =
        await _businessRepo.getBusinesses(filter, fetchItemLimit, size);

    failureOrBusinesses.fold(
      (failure) => emit(
        state.copyWith(
          isFetching: false,
          failure: some(failure),
        ),
      ),
      (businesses) => emit(
        POIState.succes(
          businesses: state.businesses..addAll(businesses),
          isFetching: false,
          failure: none(),
        ),
      ),
    );
  }
}
