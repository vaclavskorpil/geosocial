part of 'map_cubit.dart';

@freezed
abstract class MapState with _$MapState {
  const factory MapState.succes(
    Set<Marker> markers,
    LatLngBounds cameraBounds,
    bool isLoading,
    Option<ServerFailure> failure,
  ) = _Sucess;

  factory MapState.initial() => MapState.succes(
        Set(),
        LatLngBounds(southwest: LatLng(0, 0), northeast: LatLng(1, 1)),
        true,
        none(),
      );
}
