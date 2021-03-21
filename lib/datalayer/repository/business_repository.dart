import 'package:geosocial/datalayer/data_providers/api/graphql/graphql_client.dart';
import 'package:geosocial/datalayer/data_providers/api/graphql/queries/graphql_queries.graphql.dart';
import 'package:geosocial/datalayer/entities/business.dart';
import 'package:geosocial/datalayer/entities/filter_dto.dart';
import 'package:injectable/injectable.dart';

class GetBusinessesRequestFailure implements Exception {}

@lazySingleton
class BusinessRepository {
  final GraphQLService _graphQl;
 
  BusinessRepository(this._graphQl);
  

  Future<List<Business>> getBusinesses(FilterDTO filter, int limit, int offset) async {
    
    
    final result = await _graphQl.execute(
      SearchBusinessesQuery(
        variables: SearchBusinessesArguments(
          location: filter.location,
          searchTerm: filter.filterQuery,
          categories: filter.categoriesString(),
          price: filter.priceLevelToString(),
          radius: 2600,
          limit: limit,
          offset: offset
                ),
      ),
    );

    if (result.hasException) {
      throw GetBusinessesRequestFailure();
    }

    final data = result.data['search']['business'] as List;
    final businesses = data.map((e) => Business.fromJson(e)).toList();

    return businesses;
  }
}
