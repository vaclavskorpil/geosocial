import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whereisthefood/common/failures/failure.dart';

part 'location_failure.freezed.dart';

@freezed
abstract class LocationFailure extends Failure with _$LocationFailure {
  const factory LocationFailure.permissionsNotGranted() =
      _PermissionsNotGranted;
  const factory LocationFailure.serviceNotEnabled() = _ServiceNotEnabled;
}
