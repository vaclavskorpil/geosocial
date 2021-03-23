
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomMarker {
  
static  Marker createMarker(_business) {
    return Marker(
          markerId: MarkerId(_business.name),
          position: _business.coordinates.getLatLng(),
        );
  }
}



