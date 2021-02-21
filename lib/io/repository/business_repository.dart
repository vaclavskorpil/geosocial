import 'package:geosocial/io/api/graphql/graphql_client.dart';
import 'package:geosocial/io/api/graphql/queries/get_buisinesses.dart';
import 'package:geosocial/io/entities/business.dart';
import 'package:injectable/injectable.dart';

class GetBusinessesRequestFailure implements Exception {}

@lazySingleton
class BusinessRepository {
  final GraphQLService _graphQl;

  BusinessRepository(this._graphQl);

  Future<List<Business>> getBusinesses() async {

    final result = await _graphQl
        .performQuery(getBusinessesQuery, variables: {'location': 'pardubice'});

    if (result.hasException) {
      throw GetBusinessesRequestFailure();
    }
    
      final data = result.data['search']['business'] as List;
      final businesses = data.map((e) => Business.fromJson(e)).toList();

      return businesses;
    
  }
}
