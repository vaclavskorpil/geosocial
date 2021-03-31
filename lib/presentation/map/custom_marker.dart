import 'package:flutter/cupertino.dart';
import 'package:geosocial/data_layer/entities/business.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:graphql/client.dart';

class CustomMarker {
  static Marker createMarker({
    @required Business business,
    @required Function onTap,
  }) {
    return Marker(
      markerId: MarkerId(business.name),
      position: business.coordinates.getLatLng(),
      onTap: onTap,
    );
  }
}
