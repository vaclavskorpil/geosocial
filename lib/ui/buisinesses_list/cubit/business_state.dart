part of 'business_cubit.dart';

@freezed
abstract class BusinessState with _$BusinessState {
  factory BusinessState.succes({
    @required List<Business> businesses,
    @required bool isFetching,
    @required Option<Failure> failure
  }) = _BusinessState;

  factory BusinessState.initial() => BusinessState.succes(businesses: [],isFetching: true, failure: none());
}
