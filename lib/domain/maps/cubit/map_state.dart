part of 'map_cubit.dart';

@freezed
abstract class MapState with _$MapState {
  const factory MapState.succes(
      Set<Marker> markers,
      LatLng cameraPosition,
      bool isLoading,
      Option<Failure> failure 
  ) = _Sucess;

  factory MapState.initial() => MapState.succes(Set.from([]), const LatLng(0,0), true, None());
}
