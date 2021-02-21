import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/io/entities/business.dart';
import 'package:geosocial/io/repository/business_repository.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

part 'business_state.dart';

part 'business_cubit.freezed.dart';

@injectable
class BusinessCubit extends Cubit<BusinessState> {
  final BusinessRepository businessRepo;

  BusinessCubit({@required this.businessRepo}) : super(BusinessState.initial());

  void fetchBusinesses() async {
    print('Fetching bussinesses');

    emit(BusinessState.loading());
    print('After loading');

    try {
      print('Before get');
      final result = await businessRepo.getBusinesses();

      emit(BusinessState.succes(businesses: result));
    } catch (GetBusinessesRequestFailure) {
      print('Oh no failure occured');
      emit(BusinessState.failure());
    }
  }
}
