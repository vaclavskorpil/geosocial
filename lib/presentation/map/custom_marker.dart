import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whereisthefood/data_layer/entities/business.dart';
import 'package:whereisthefood/presentation/filter/supported_categories.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'cutom_bitmap_descriptor.dart';

class CustomMarker {
  static Future<Marker> createMarker({
    @required Business business,
    @required Function onTap,
  }) async {
    //find first business category from supported categories, compared by alias
    final categoryMatch = SupportedCategories.fromCategory(business.categories);

    final icon =
        await CustomBitmapDescriptors.getFromSupportedCategory(categoryMatch);

    return Marker(
      icon: icon,
      markerId: MarkerId(business.name),
      position: business.coordinates.getLatLng(),
      onTap: onTap,
    );
  }
}
