import 'package:injectable/injectable.dart';
import 'package:graphql/client.dart';
import 'connection.dart';

@lazySingleton
class GraphQLService {
  GraphQLClient _client;

  GraphQLService() {
    _client = clientToQuery();
  }

  Future<QueryResult> performQuery(String query,
      {Map<String, dynamic> variables}) async {
    print(' performing query');
    try {
      var document = gql(query);
    } catch (e) {
      print(e.toString);
    }

    QueryOptions options = QueryOptions(
        document: gql(query), variables: {'location': 'pardubice'});
    print(' performing query');
    final result = await _client.query(options);

    print('Result $result');

    return result;
  }
}
