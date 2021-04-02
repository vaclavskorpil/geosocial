part of 'map_cubit.dart';

@freezed
abstract class MapState with _$MapState {
  const factory MapState.succes(
    List<Business> businesses,
    LatLng cameraPosition,
    bool isLoading,
    Option<ServerFailure> failure,
  ) = _Sucess;

  factory MapState.initial() => MapState.succes(
        [],
        const LatLng(0, 0),
        true,
        none(),
     
      );
}
