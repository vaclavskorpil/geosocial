part of 'my_location_cubit.dart';

class MyLocationState {
  final LatLng myLocation;
  final Option<LocationFailure> failure;

  MyLocationState(
    this.myLocation,
    this.failure,
  );
}
