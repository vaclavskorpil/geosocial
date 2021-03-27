


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/common/failures/failure.dart';

part 'poi_failure.freezed.dart';

@freezed
abstract class POIFailure extends Failure with _$POIFailure {
  const factory POIFailure.noPoiFound() = _noPoiFound;
}
