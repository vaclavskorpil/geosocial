import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/data_layer/entities/business.dart';
import 'package:geosocial/data_layer/entities/filter_dto.dart';
import 'package:geosocial/data_layer/repository/business_repository.dart';
import 'package:geosocial/data_layer/repository/filter_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:geosocial/common/failures/failure.dart';
part 'business_state.dart';

part 'business_cubit.freezed.dart';

@lazySingleton
class BusinessCubit extends Cubit<BusinessState> {
  final BusinessRepository _businessRepo;
  final FilterRepository _filterRepo;
  
  final fetchMoreTreshold = 15;
  final fetchItemLimit = 20;

  FilterDTO get _filter => _filterRepo.currentFilter;

  BusinessCubit(this._businessRepo, this._filterRepo)
      : super(BusinessState.initial());

  void fetchBusinesses() async {
    _fetchBusinesses(_filter, state.businesses.length);
  }

  void fetchNewBusinesses() async {
    print("Fetching new businesses ");
    _fetchBusinessesInitial(_filter, state.businesses.length);
  }

  void _fetchBusinessesInitial(FilterDTO filter, int size) async {
    emit(state.copyWith(isFetching: true));

    try {
      final result =
          await _businessRepo.getBusinesses(filter, fetchItemLimit, size);

      emit(
        BusinessState.succes(
            businesses: result, isFetching: false, failure: none()),
      );

      print("New businesses fetched $result ");
    } catch (GetBusinessesRequestFailure) {
      emit(
        state.copyWith(
            isFetching: false, failure: optionOf(Failure.serverError())),
      );
    }
  }

  void _fetchBusinesses(FilterDTO filter, int size) async {
    emit(state.copyWith(isFetching: true));

    try {
      final result =
          await _businessRepo.getBusinesses(filter, fetchItemLimit, size);

      emit(
        BusinessState.succes(
          businesses: state.businesses..addAll(result),
          isFetching: false,
          failure: none(),
        ),
      );
    } catch (GetBusinessesRequestFailure) {
      emit(
        state.copyWith(
          isFetching: false,
          failure: optionOf(Failure.serverError()),
        ),
      );
    }
  }
}
