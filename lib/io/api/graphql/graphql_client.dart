import 'package:dio/dio.dart';
import 'package:geosocial/common/constatns.dart';
import 'package:geosocial/common/di/injector.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:injectable/injectable.dart';
import 'package:graphql/client.dart';

import 'package:artemis/artemis.dart';
import 'package:artemis/client.dart';

@lazySingleton
class GraphQLService {
  GraphQLClient _client;
  GraphQLService(this._client);

  @factoryMethod
  static GraphQLService createGQLService() {
    final AuthLink authLink = AuthLink(getToken: () async => 'Bearer $apiKey');

    final DioLink dioLink = DioLink("", client: injector<Dio>());

    final Link link = Link.from([authLink, dioLink]);

    final client =
        GraphQLClient(link: link, cache: GraphQLCache(store: HiveStore()));

    return GraphQLService(client);
  }

  Future<QueryResult> execute(GraphQLQuery query) async {
    final result = await _client.query(QueryOptions(document: query.document, variables: query.getVariablesMap()));
    return result;
  }

  // Future<QueryResult> performQuery(String query,
  //     {Map<String, dynamic> variables}) async {
  //   print(' performing query');
  //   try {
  //     var document = gql(query);
  //   } catch (e) {
  //     print(e.toString);
  //   }

  //   QueryOptions options = QueryOptions(
  //       document: gql(query), variables: {'location': 'pardubice'});
  //   print(' performing query');
  //   final result = await _client.(Bussi);

  //   print('Result $result');

  //   return result;
  // }
}
