import 'package:geosocial/common/failures/server_failure.dart';
import 'package:geosocial/data_layer/data_sources/network/graphql/graphql_client.dart';
import 'package:geosocial/data_layer/data_sources/network/graphql/queries/graphql_queries.graphql.dart';
import 'package:geosocial/data_layer/entities/business.dart';
import 'package:geosocial/data_layer/entities/filter_dto.dart';
import 'package:geosocial/data_layer/services/internet_connection.dart';
import 'package:geosocial/data_layer/services/location_service/location_service.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

class GetBusinessesRequestFailure implements Exception {}

abstract class BusinessRepository {
  Future<Either<ServerFailure, List<Business>>> getBusinesses(
      FilterDTO filter, int limit, int offset);
  Future<Either<ServerFailure, Business>> getBusinessDetail(String id);
}

@LazySingleton(as: BusinessRepository)
class BusinessRepositoryImpl extends BusinessRepository {
  final LocationService _locationService;
  final GraphQLService _graphQl;
  final NetworkService _networkService;

  BusinessRepositoryImpl(
      this._graphQl, this._locationService, this._networkService);

  Future<Either<ServerFailure, List<Business>>> getBusinesses(
    FilterDTO filter,
    int limit,
    int offset,
  ) async {
    // whole body is in try catch so we can be sure that this function newer
    // throws error
    try {
      if (!await _networkService.isConnected) {
        return left(ServerFailure.noInternetConnection());
      }

      final location = filter.useMyLocation ? null : filter.location;
      var longitude;
      var latitude;

      if (filter.useMyLocation) {
        final positionOrFailrue = await _locationService.getCurrentPosition();
        positionOrFailrue.fold(
          (failure) => {
            //ignored, failure should never occur
          },
          (position) {
            longitude = position.longitude;
            latitude = position.latitude;
          },
        );
      }

      print("\n\n categories ${filter.categoriesString()} \n\n");

      final result = await _graphQl.execute(
        SearchBusinessesQuery(
          variables: SearchBusinessesArguments(
            location: location,
            latitude: latitude,
            longitude: longitude,
            searchTerm: filter.filterQuery,
            categories: filter.categoriesString(),
            price: filter.priceLevelToString(),
            radius: filter.radius,
            limit: limit,
            offset: offset,
          ),
        ),
      );

      if (result.hasException) {
        return left(ServerFailure.serverError());
      }

      final data = result.data['search']['business'] as List;
      final businesses = data.map((e) => Business.fromJson(e)).toList();

      return right(businesses);
    } catch (e) {
      return left(ServerFailure.serverError());
    }
  }

  @override
  Future<Either<ServerFailure, Business>> getBusinessDetail(String id) async {
    try {
      if (!await _networkService.isConnected) {
        return left(ServerFailure.noInternetConnection());
      }

      final result = await _graphQl.execute(
        BusinessDetailQuery(
          variables: BusinessDetailArguments(id: id),
        ),
      );
      if (result.hasException) {
        return left(ServerFailure.serverError());
      }

      final business = Business.fromJson(result.data['business']);
      return right(business);
    } catch (e) {
      return left(ServerFailure.serverError());
    }
  }
}
