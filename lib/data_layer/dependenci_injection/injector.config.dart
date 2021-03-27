// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../data_sources/local_storage/app_storage.dart';
import '../repository/business_repository.dart';
import '../../domain/fitler/filter_cubit.dart';
import '../repository/filter_repository.dart';
import '../data_sources/network/graphql/graphql_client.dart';
import '../services/location_service/location_service.dart';
import '../../domain/maps/cubit/map_cubit.dart';
import '../../domain/poi/poi_cubit.dart';
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
  final resolvedDio = await registerModule.dio;
  gh.lazySingleton<Dio>(() => resolvedDio);
  final resolvedFilterRepository =
      await registerModule.filterRepository(get<AppStorage>());
  gh.lazySingleton<FilterRepository>(() => resolvedFilterRepository);
  gh.lazySingleton<GraphQLService>(() => GraphQLService.createGQLService());
  gh.lazySingleton<LocationService>(() => LocationServiceImp());
  gh.lazySingleton<BusinessRepository>(() =>
      BusinessRepositoryImpl(get<GraphQLService>(), get<LocationService>()));
  gh.factory<FilterCubit>(
      () => FilterCubit(get<FilterRepository>(), get<LocationService>()));
  gh.lazySingleton<POICubit>(() => POICubit(
        get<BusinessRepository>(),
        get<FilterRepository>(),
        get<LocationService>(),
      ));
  final resolvedMapCubit =
      await registerModule.mapCubit(get<POICubit>(), get<LocationService>());
  gh.lazySingleton<MapCubit>(() => resolvedMapCubit);
  return get;
}

class _$RegisterModule extends RegisterModule {}
