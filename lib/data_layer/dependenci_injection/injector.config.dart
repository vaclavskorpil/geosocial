// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../data_sources/local_storage/app_storage.dart';
import '../../domain/businesses_cubit/business_cubit.dart';
import '../repository/business_repository.dart';
import '../data_sources/network/custom_dio.dart';
import '../../domain/fitler_cubit/filter_cubit.dart';
import '../repository/filter_repository.dart';
import '../data_sources/network/graphql/graphql_client.dart';
import '../../domain/maps/cubit/map_cubit.dart';
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
  gh.lazySingleton<AppStorage>(() => AppStorage());
  gh.lazySingletonAsync<CustomDio>(() => CustomDio.createDio());
  final resolvedDio = await registerModule.dio;
  gh.factory<Dio>(() => resolvedDio);
  final resolvedFilterRepository =
      await registerModule.createFilterRepository(get<AppStorage>());
  gh.factory<FilterRepository>(() => resolvedFilterRepository);
  gh.lazySingletonAsync<FilterRepositoryImpl>(
      () => FilterRepositoryImpl.createFilterRepository(get<AppStorage>()));
  gh.lazySingleton<GraphQLService>(() => GraphQLService.createGQLService());
  gh.factory<MapCubit>(() => MapCubit());
  gh.lazySingleton<BusinessRepository>(
      () => BusinessRepositoryImpl(get<GraphQLService>()));
  gh.factory<FilterCubit>(() => FilterCubit(get<FilterRepository>()));
  gh.lazySingleton<BusinessCubit>(
      () => BusinessCubit(get<BusinessRepository>(), get<FilterRepository>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
