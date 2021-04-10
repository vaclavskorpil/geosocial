import 'package:whereisthefood/data_layer/services/location_service/location_failure.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class LocationService {
  ///Returns current position
  ///
  ///returns current device position or Location failure when service is not enabled
  ///or permission is not granted
  Future<Either<LocationFailure, LatLng>> getCurrentPosition();

  ///Returns centroid from givent points
  LatLng getCentroid(Set<LatLng> locationPoints);

  Future<bool> hasPermissions();

  Future<Either<LocationFailure, LatLng>> getLastKnownPosition();

  LatLngBounds getMapBounds(List<LatLng> positions);
}

@LazySingleton(as: LocationService)
class LocationServiceImp extends LocationService {
  @override
  Future<Either<LocationFailure, LatLng>> getCurrentPosition() async {
    final failure = await _checkPermissions();

    return failure.fold(
      //permissions granted, return current position
      () async {
        var position = await Geolocator.getCurrentPosition();
        return Right(LatLng(position.latitude, position.longitude));
      },
      //parmision not granted, return failure
      (failure) async {
        return left(failure);
      },
    );
  }

  @override
  LatLng getCentroid(Set<LatLng> locationPoints) {
    double lat = 0;
    double lng = 0;

    locationPoints.forEach((element) {
      lat += element.latitude;
      lng += element.longitude;
    });

    final centroid =
        LatLng(lat / locationPoints.length, lng / locationPoints.length);
    return centroid;
  }

  @override
  Future<Either<LocationFailure, LatLng>> getLastKnownPosition() async {
    final failure = await _checkPermissions();

    return failure.fold(
      //permissions granted, return current position
      () async {
        var position = await Geolocator.getLastKnownPosition();
        return Right(LatLng(position.latitude, position.longitude));
      },
      //parmision not granted, return failure
      (failure) async {
        return left(failure);
      },
    );
  }

  // Checks for users permissions, if user doesnot have permissions
  // asks for them. If user declines returns LocationFailure
  Future<Option<LocationFailure>> _checkPermissions() async {
    bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      Geolocator.requestPermission();
      return Some(LocationFailure.serviceNotEnabled());
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately.
        return Some(LocationFailure.permissionsNotGranted());
      }

      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Some(LocationFailure.permissionsNotGranted());
      }
    }
    return none();
  }

  @override
  Future<bool> hasPermissions() async {
    final hasPermisions = await _checkPermissions();

    return hasPermisions.isNone();
  }

  @override
  LatLngBounds getMapBounds(List<LatLng> positions) {
    final southwestLat = positions.map((p) => p.latitude).reduce(
        (value, element) => value < element ? value : element); // smallest
    final southwestLon = positions
        .map((p) => p.longitude)
        .reduce((value, element) => value < element ? value : element);
    final northeastLat = positions.map((p) => p.latitude).reduce(
        (value, element) => value > element ? value : element); // biggest
    final northeastLon = positions
        .map((p) => p.longitude)
        .reduce((value, element) => value > element ? value : element);
    return LatLngBounds(
        southwest: LatLng(southwestLat, southwestLon),
        northeast: LatLng(northeastLat, northeastLon));
  }
}
