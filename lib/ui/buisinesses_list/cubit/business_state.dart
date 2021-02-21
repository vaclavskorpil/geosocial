part of 'business_cubit.dart';

@freezed
abstract class BusinessState with _$BusinessState {
  factory BusinessState.succes({@required List<Business> businesses}) = _BusinessState;

  factory BusinessState.loading() = Loading;

  factory BusinessState.failure() = Failure;

  factory BusinessState.initial() => Loading();
}
