// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../ui/buisinesses_list/cubit/business_cubit.dart';
import '../../io/repository/business_repository.dart';
import '../../io/api/custom_dio.dart';
import '../../io/api/graphql/graphql_client.dart';
import 'modules.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingletonAsync<CustomDio>(() => CustomDio.createDio());
  final resolvedDio = await registerModule.dio;
  gh.factory<Dio>(() => resolvedDio);
  gh.lazySingleton<GraphQLService>(() => GraphQLService());
  gh.lazySingleton<BusinessRepository>(
      () => BusinessRepository(get<GraphQLService>()));
  gh.factory<BusinessCubit>(
      () => BusinessCubit(businessRepo: get<BusinessRepository>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
