import 'package:dio/dio.dart';
import 'package:geosocial/common/di/injector.dart';
import 'package:geosocial/io/api/custom_dio.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:geosocial/common/constatns.dart';

//final HttpLink httpLink = HttpLink();

final AuthLink authLink = AuthLink(getToken: () async => 'Bearer $apiKey');

final DioLink dioLink = DioLink("", client: injector<Dio>());

final Link link = Link.from([authLink, dioLink]);

GraphQLClient clientToQuery() {
  return GraphQLClient(
    cache: GraphQLCache(store: HiveStore()),
    link: link,
  );
}
