import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:geosocial/common/failures/server_failure.dart';
import 'package:geosocial/data_layer/entities/business.dart';
import 'package:geosocial/data_layer/services/location_service/location_service.dart';

import 'package:geosocial/domain/maps/selected_poi/cubit/selected_poi_cubit.dart';
import 'package:geosocial/domain/poi/poi_cubit.dart';
import 'package:geosocial/presentation/map/custom_marker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

part 'map_state.dart';
part 'map_cubit.freezed.dart';

@lazySingleton
class MapCubit extends Cubit<MapState> {
  final defaultLatLng = LatLng(50.073658, 14.418540);

  GoogleMapController mapController;
  LocationService _locationService;
  SelectedPOICubit _selectedPOICubit;

  POICubit _poiCubit;

  MapCubit(
    this._poiCubit,
    this._locationService,
    this._selectedPOICubit,
  ) : super(MapState.initial()) {
    // listen to poi cubit and when event is emmited,
    // transform it to map state and emit this state
    _poiCubit.stream.listen(_transformPoiStateToMapState);
  }

  void initMapController(GoogleMapController controller) {
    if (mapController != null) return;
    mapController = controller;
  }

  ///transforms businesses to set of markers
  ///counts location of camera
  void _transformPoiStateToMapState(POIState poiState) async {
    // hide info box card if it is not hiden already

    _selectedPOICubit.hide();

    if (poiState.isFetching) {
      emit(state.copyWith(isLoading: true, failure: none()));
      return;
    }

    poiState.failure.fold(
      () async {
        //if no businesses were found, emit POIFailure and return
        if (poiState.businesses.isEmpty) {
          emit(state.copyWith(
              failure: some(ServerFailure.noPoiFound()), isLoading: false));
          return;
        }

        // set camera location to centroid of all returnet pois
        var mapBounds = _locationService.getMapBounds(poiState.businesses
            .map((business) => business.coordinates.getLatLng())
            .toList());

        var markers = await _createMarkers(poiState.businesses);

        emit(MapState.succes(markers, mapBounds, false, none()));
      },
      // if there is failure just pass it along
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          failure: some(failure),
        ),
      ),
    );
  }

  Future<Set<Marker>> _createMarkers(List<Business> businesses) async {
    final markers = await Future.wait(
      businesses.map(
        (poi) async {
          final marker = await CustomMarker.createMarker(
            business: poi,
            onTap: () {
              _selectedPOICubit.selectPoi(poi);
            },
          );
          return marker;
        },
      ),
    );

    return markers.toSet();
  }
}
