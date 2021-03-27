part of 'poi_cubit.dart';

@freezed
abstract class POIState with _$POIState {
  factory POIState.succes({
    @required List<Business> businesses,
    @required bool isFetching,
    @required Option<ServerFailure> failure
  }) = _POIState;

  factory POIState.initial() => POIState.succes(businesses: [],isFetching: false, failure: none());
}
