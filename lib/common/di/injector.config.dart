// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../io/api/app_storage.dart';
import '../../ui/buisinesses_list/cubit/business_cubit.dart';
import '../../io/repository/business_repository.dart';
import '../../io/api/custom_dio.dart';
import '../../ui/filter/cubit/cubit/filter_cubit.dart';
import '../../io/repository/filter_repository.dart';
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
  gh.lazySingleton<FilterRepository>(
      () => FilterRepositoryImpl(get<AppStorage>()));
  gh.lazySingleton<GraphQLService>(() => GraphQLService.createGQLService());
  gh.lazySingleton<BusinessRepository>(
      () => BusinessRepository(get<GraphQLService>()));
  gh.factory<FilterCubit>(() => FilterCubit(get<FilterRepository>()));
  gh.factory<BusinessCubit>(
      () => BusinessCubit(get<BusinessRepository>(), get<FilterRepository>()));

  // Eager singletons must be registered in the right order
  gh.singleton<AppStorage>(AppStorage());
  return get;
}

class _$RegisterModule extends RegisterModule {}
