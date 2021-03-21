import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/datalayer/entities/business.dart';
import 'package:geosocial/datalayer/entities/filter_dto.dart';
import 'package:geosocial/datalayer/repository/business_repository.dart';
import 'package:geosocial/datalayer/repository/filter_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:geosocial/common/failures/failure.dart';
part 'business_state.dart';

part 'business_cubit.freezed.dart';

@injectable
class BusinessCubit extends Cubit<BusinessState> {
  final BusinessRepository _businessRepo;
  final FilterRepository _filterRepo;
  /* FilterDTO _filterDTO; */
  final fetchMoreTreshold = 15;
  final fetchItemLimit = 20;

  FilterDTO _filter = FilterDTO.empty();

  BusinessCubit(this._businessRepo, this._filterRepo)
      : super(BusinessState.initial()) {
    _filterRepo.filterStream.listen((event) {
      _filter = event;

      print("Filter streem poped value $event");
      _fetchBusinessesInitial(_filter, 0);
    });
  }

  void fetchBusinesses() async {
    _fetchBusinesses(_filter,state.businesses.length);
  }

  void applyFilter() async {
    _filter = await _filterRepo.getFilter();
    fetchBusinesses();
  }

  void _fetchBusinessesInitial(FilterDTO filter, int size) async {
    emit(state.copyWith(isFetching: true));

    try {
      final result =
          await _businessRepo.getBusinesses(filter, fetchItemLimit, size);

      emit(BusinessState.succes(
          businesses: state.businesses..addAll(result),
          isFetching: false,
          failure: none()));
    } catch (GetBusinessesRequestFailure) {
      emit(state.copyWith(
          isFetching: false, failure: optionOf(Failure.serverError())));
    }
  }

  
  void _fetchBusinesses(FilterDTO filter, int size) async {
    emit(state.copyWith(isFetching: true));

    try {
      final result =
          await _businessRepo.getBusinesses(filter, fetchItemLimit, size);

      emit(BusinessState.succes(
          businesses: state.businesses..addAll(result),
          isFetching: false,
          failure: none()));
    } catch (GetBusinessesRequestFailure) {
      emit(state.copyWith(
          isFetching: false, failure: optionOf(Failure.serverError())));
    }
  }
}
