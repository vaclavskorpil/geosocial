import 'package:dio/dio.dart';
import 'package:geosocial/common/constants/constatns.dart';
import 'package:geosocial/data_layer/dependenci_injection/injector.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:injectable/injectable.dart';
import 'package:graphql/client.dart';

import 'package:artemis/artemis.dart';

@lazySingleton
class GraphQLService {
  GraphQLClient _client;
  GraphQLService(this._client);

  @factoryMethod
  static GraphQLService createGQLService() {
    final AuthLink authLink =
        AuthLink(getToken: () async => 'Bearer ${Constants.apiKey}');

    final DioLink dioLink = DioLink("", client: injector<Dio>());

    final Link link = Link.from([authLink, dioLink]);

    final client = GraphQLClient(
      link: link,
      cache: GraphQLCache(
        store: HiveStore(),
      ),
      defaultPolicies: DefaultPolicies(
        // yelp terms and conditions restricts any cashing of data
        // for longer than 24h. So cashing is disabled alltogether.
        query: Policies(
          fetch: FetchPolicy.networkOnly,
        ),
      ),
    );

    return GraphQLService(client);
  }

  Future<QueryResult> execute(GraphQLQuery query) async {
    final result = await _client.query(QueryOptions(
        document: query.document, variables: query.getVariablesMap()));
    return result;
  }
}
