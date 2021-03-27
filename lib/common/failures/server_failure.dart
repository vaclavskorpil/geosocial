import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/common/failures/failure.dart';

part 'server_failure.freezed.dart';

@freezed
abstract class ServerFailure extends Failure with _$ServerFailure {
  const factory ServerFailure.serverError() = _ServerError;
  const factory ServerFailure.noInternetConnection() = _NoInternetConnection;
}
