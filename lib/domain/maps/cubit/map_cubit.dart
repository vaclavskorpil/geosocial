import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/common/failures/failure.dart';
import 'package:geosocial/common/failures/poi_failure.dart';
import 'package:geosocial/data_layer/entities/business.dart';
import 'package:geosocial/data_layer/services/location_service/location_service.dart';
import 'package:geosocial/domain/poi/poi_cubit.dart';
import 'package:geosocial/presentation/map/custom_marker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map_state.dart';
part 'map_cubit.freezed.dart';

class MapCubit extends Cubit<MapState> {
  final defaultLatLng = LatLng(50.073658, 14.418540);

  GoogleMapController mapController;
  LocationService _locationService;
  POICubit _poiCubit;

  MapCubit(this._poiCubit, this._locationService) : super(MapState.initial()) {
    // listen to poi cubit and when event is emmited,
    // transform it to map state and emit this state
    _poiCubit.stream.listen(_transformPoiStateToMapState);
  }

  //Initialize map position to last known location
  static Future<MapCubit> createMapCubit(
    POICubit poiCubit,
    LocationService locationService,
  ) async {
    MapCubit cubit = MapCubit(poiCubit, locationService);
    cubit._initMapToMyLastKnownPostion();
    return cubit;
  }

  void initMapController(GoogleMapController controller) {
    if (mapController != null) return;
    mapController = controller;
  }

  ///transforms businesses to set of markers
  ///counts location of camera
  void _transformPoiStateToMapState(POIState poiState) {
    
    if (poiState.isFetching) {
      emit(state.copyWith(isLoading: true, failure: none()));
      return;
    }

    //if no businesses were found, emit POIFailure and return
    if (poiState.businesses.isEmpty) {
      emit(state.copyWith(
          failure: some(POIFailure.noPoiFound()), isLoading: false));
      return;
    }

    Set<Marker> markers = poiState.businesses
        .map((business) => CustomMarker.createMarker(business))
        .toSet();

    var location = _locationService.getCentroid(poiState.businesses
        .map((business) => business.coordinates.getLatLng())
        .toSet());

    emit(MapState.succes(markers, location, false, none()));
  }

  Future<void> _initMapToMyLastKnownPostion() async {
    final positionOrFailure = await _locationService.getLastKnownPosition();
    final position = positionOrFailure.fold(
      (failure) => defaultLatLng,
      (position) => position,
    );

    emit(state.copyWith(cameraPosition: position));
  }
}
