
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/data_layer/dependenci_injection/injector.dart';
import 'package:geosocial/data_layer/entities/business.dart';
import 'package:geosocial/domain/maps/cubit/map_cubit.dart';
import 'package:geosocial/domain/maps/selected_poi/cubit/selected_poi_cubit.dart';
import 'package:geosocial/presentation/map/business_infobox.dart';
import 'package:geosocial/presentation/map/custom_marker.dart';
import 'package:geosocial/presentation/styled_widgets/styled_snackbar.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatelessWidget {
  void _handlePoiFailure(BuildContext context, MapState state) {
    state.failure.fold(() => null, (failure) {
      final messanger = ScaffoldMessenger.of(context);
      messanger.hideCurrentSnackBar();
      messanger.showSnackBar(styledSnackBar("No businesses found"));
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

  Set<Marker> _createMarkers(BuildContext context, List<Business> businesses) {
    return businesses
        .map(
          (business) => CustomMarker.createMarker(
            business: business,
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) =>
              //         BusinessDetailPage(businessId: business.id),
              //   ),
              // );

              // ScaffoldMessenger.of(context)
              //     .showSnackBar(businessSnackBar(business, context));

              context.read<SelectedPOICubit>().selectPoi(business);
            },
          ),
        )
        .toSet();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return MultiBlocProvider(
          providers: [
            BlocProvider<MapCubit>(
              create: (context) => injector<MapCubit>(),
            ),
            BlocProvider<SelectedPOICubit>(
              create: (context) => injector<SelectedPOICubit>(),
            ),
          ],
          child: BlocListener<MapCubit, MapState>(
            listenWhen: _hasFailure,
            listener: _handlePoiFailure,
            child: Stack(
              children: [
                BlocConsumer<MapCubit, MapState>(
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
                        markers: _createMarkers(context, state.businesses),
                        onMapCreated: (controller) => context
                            .read<MapCubit>()
                            .initMapController(controller),
                        onTap: (latLng) {
                          context.read<SelectedPOICubit>().hide();
                        },
                      );
                    }),
                BusinessInfoBox()
              ],
            ),
          ));
    });
  }
}
