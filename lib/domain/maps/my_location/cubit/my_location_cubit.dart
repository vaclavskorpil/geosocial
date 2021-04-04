import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/common/failures/failure.dart';
import 'package:geosocial/data_layer/services/location_service/location_failure.dart';
import 'package:geosocial/data_layer/services/location_service/location_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

part 'my_location_state.dart';


@lazySingleton
class MyLocationCubit extends Cubit<MyLocationState> {
  LocationService _locationService;
  MyLocationCubit(this._locationService)
      : super(MyLocationState(LatLng(0, 0), none()));

  void goToMyLocaion() async {
    final locationOrFailure = await _locationService.getCurrentPosition();

    locationOrFailure.fold(
      (failure) => emit(MyLocationState(state.myLocation, some(failure))),
      (location) {
        emit(MyLocationState(location, none()));
      },
    );
  }
}
