import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/common/failures/server_failure.dart';
import 'package:geosocial/data_layer/entities/business.dart';
import 'package:geosocial/data_layer/repository/business_repository.dart';
import 'package:injectable/injectable.dart';

part 'detail_state.dart';
part 'detail_cubit.freezed.dart';

@injectable
class DetailCubit extends Cubit<DetailState> {
  BusinessRepository _businessRepository;

  DetailCubit(this._businessRepository) : super(DetailState.initial());

  void fetchBusiness(String id) async {
    emit(DetailState.detailLoading());
    final detailOrFailure = await _businessRepository.getBusinessDetail(id);

    detailOrFailure.fold(
      (failure) => emit(DetailState.loadingFailed(failure)),
      (business) => emit(DetailState.succes(business)),
    );
  }
}
