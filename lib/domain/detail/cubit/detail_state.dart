part of 'detail_cubit.dart';

@freezed
abstract class DetailState with _$DetailState {
  factory DetailState.initial() => DetailState.detailLoading();

  const factory DetailState.detailLoading() = _DetailLoading;
  const factory DetailState.succes(Business business) = _Sucess;
  const factory DetailState.loadingFailed(ServerFailure failure) = _LoadingFailed;
}
