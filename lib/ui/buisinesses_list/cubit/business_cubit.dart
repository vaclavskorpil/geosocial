import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/io/entities/business.dart';
import 'package:geosocial/io/repository/business_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:geosocial/common/failures/failure.dart';
part 'business_state.dart';

part 'business_cubit.freezed.dart';

@injectable
class BusinessCubit extends Cubit<BusinessState> {
  final BusinessRepository businessRepo;
  final fetchMoreTreshold = 15;
  final fetchItemLimit = 20;
  BusinessCubit({@required this.businessRepo}) : super(BusinessState.initial());

  void fetchBusinesses() async {
    print("fetching businesses");
    emit(state.copyWith(isFetching: true));

    try {
      final result = await businessRepo.getBusinesses(
          'pardubice', fetchItemLimit, state.businesses.length);

      emit(BusinessState.succes(
          businesses: state.businesses..addAll(result),
          isFetching: false,
          failure: none()));
    } catch (GetBusinessesRequestFailure) {
      emit(state.copyWith(isFetching: false, failure: optionOf(Failure.serverError())));
    }
  }
}
