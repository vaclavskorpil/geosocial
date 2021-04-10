import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whereisthefood/data_layer/dependenci_injection/injector.dart';

import 'package:whereisthefood/domain/maps/cubit/map_cubit.dart';
import 'package:whereisthefood/domain/maps/my_location/cubit/my_location_cubit.dart';
import 'package:whereisthefood/domain/maps/selected_poi/cubit/selected_poi_cubit.dart';
import 'package:whereisthefood/presentation/map/business_infobox.dart';
import 'package:whereisthefood/presentation/map/filter_floating_action_button.dart';
import 'package:whereisthefood/presentation/map/my_location_floating_action_button.dart';

import 'package:whereisthefood/presentation/styled_widgets/styled_snackbar.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:whereisthefood/presentation/theme/google_maps_theme.dart';

class MapsPage extends StatelessWidget {
  void _handleFailure(BuildContext context, MapState state) {
    state.failure.fold(() => null, (failure) {
      final messanger = ScaffoldMessenger.of(context);
      messanger.hideCurrentSnackBar();
      messanger.showSnackBar(
        styledSnackBar(
          failure.when(
              serverError: () => "Something went wrong. :(",
              noInternetConnection: () => "No internetConnection",
              noPoiFound: () => "No businesses were found. :("),
        ),
      );
    });
  }

  void _moveCameraToBounds(BuildContext context, MapState state) {
    context.read<MapCubit>().mapController.animateCamera(
          CameraUpdate.newLatLngBounds(state.cameraBounds, 50),
        );
  }

  bool _cameraPositionChanged(MapState oldState, MapState newState) {
    return oldState.cameraBounds != newState.cameraBounds;
  }

  bool _hasFailure(MapState oldState, MapState newState) {
    return oldState.failure.isSome() != newState.failure.isSome();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<MapCubit>(
              create: (context) => injector<MapCubit>(),
            ),
            BlocProvider<SelectedPOICubit>(
              create: (context) => injector<SelectedPOICubit>(),
            ),
            BlocProvider<MyLocationCubit>(
              create: (context) => injector<MyLocationCubit>()..goToMyLocaion(),
            ),
          ],
          child: MultiBlocListener(
            listeners: [
              BlocListener<MapCubit, MapState>(
                listenWhen: _hasFailure,
                listener: _handleFailure,
              ),
              BlocListener<MapCubit, MapState>(
                listenWhen: _cameraPositionChanged,
                listener: _moveCameraToBounds,
              ),
              BlocListener<MyLocationCubit, MyLocationState>(
                listener: (context, state) {
                  state.failure.fold(
                    () {
                      context.read<MapCubit>().mapController.animateCamera(
                          CameraUpdate.newLatLng(state.myLocation));
                    },
                    (failure) {
                      final messanger = ScaffoldMessenger.of(context);
                      messanger.hideCurrentSnackBar();
                      messanger.showSnackBar(
                        styledSnackBar(
                          failure.when(
                              permissionsNotGranted: () =>
                                  "You dont have permissions.",
                              serviceNotEnabled: () =>
                                  "Location service is not enabled."),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
            child: Stack(
              children: [
                BlocBuilder<MapCubit, MapState>(
                    buildWhen: (_, newState) => !newState.isLoading,
                    builder: (context, state) {
                      return GoogleMap(
                        mapType: MapType.normal,
                        myLocationEnabled: true,
                        myLocationButtonEnabled: false,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(0, 0),
                          zoom: 13,
                        ),
                        markers: state.markers,
                        onMapCreated: (controller) async  {
                          context
                              .read<MapCubit>()
                              .initMapController(controller);
                          controller.setMapStyle(googleMapsTheme);
                        },
                        onTap: (latLng) {
                          context.read<SelectedPOICubit>().hide();
                        },
                      );
                    }),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Column(
                    children: [
                      const FilterFloationActionButton(),
                      const SizedBox(height: 8),
                      const MyLocationFloationActionButton()
                    ],
                  ),
                ),
                BusinessInfoBox()
              ],
            ),
          ),
        );
      },
    );
  }
}
