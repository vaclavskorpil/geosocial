import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/data_layer/dependenci_injection/injector.dart';
import 'package:geosocial/domain/maps/cubit/map_cubit.dart';
import 'package:geosocial/presentation/styled_widgets/styled_snackbar.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatelessWidget {
  void _handlePoiFailure(BuildContext context, MapState state) {
    state.failure.fold(() => null, (failure) {
      final messanger = ScaffoldMessenger.of(context);
      messanger.hideCurrentSnackBar();
      messanger.showSnackBar(
       styledSnackBar("No businesses found")
      );
    });
  }

  void _moveCamera(BuildContext context, MapState state) {
    context.read<MapCubit>().mapController.moveCamera(
          CameraUpdate.newLatLng(
            state.cameraPosition,
          ),
        );
  }

  bool _cameraPositionChanged(MapState oldState, MapState newState) {
    return oldState.cameraPosition != newState.cameraPosition;
  }

  bool _hasFailure(MapState oldState, MapState newState) {
    return newState.failure.isSome();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BlocProvider(
          create: (context) => injector<MapCubit>(),
          child: BlocListener<MapCubit, MapState>(
            listenWhen: _hasFailure,
            listener: _handlePoiFailure,
            child: BlocConsumer<MapCubit, MapState>(
                listenWhen: _cameraPositionChanged,
                listener: _moveCamera,
                buildWhen: (_, newState) => !newState.isLoading,
                builder: (context, state) {
                  return GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(
                      target: state.cameraPosition,
                      zoom: 13,
                    ),
                    //onMapCreated: _onMapCreated,
                    markers: state.markers,
                    onMapCreated: (controller) =>
                        context.read<MapCubit>().initMapController(controller),
                  );
                }),
          ));
    });
  }
}
