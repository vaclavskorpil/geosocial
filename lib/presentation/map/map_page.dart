import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/domain/businesses_cubit/business_cubit.dart';
import 'package:geosocial/presentation/map/custom_marker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BusinessCubit, BusinessState>(
      builder: (context, state) {
        Set<Marker> markers = state.businesses
            .map((business) => CustomMarker.createMarker(business))
            .toSet();

        print("Building google map");
        final target =
            markers.isNotEmpty ? markers.first.position : LatLng(0, 0);
        return GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: target,
            zoom: 13,
          ),
          onMapCreated: _onMapCreated,
          markers: markers,
        );
      },
    );
  }
}
