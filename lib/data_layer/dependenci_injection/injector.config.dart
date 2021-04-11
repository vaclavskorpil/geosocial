// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../data_sources/local_storage/app_storage.dart';
import '../repository/business_repository.dart';
import '../../domain/detail/cubit/detail_cubit.dart';
import '../../domain/fitler/filter_cubit.dart';
import '../repository/filter_repository.dart';
import '../data_sources/network/graphql/graphql_client.dart';
import '../services/location_service/location_service.dart';
import '../../domain/maps/cubit/map_cubit.dart';
import '../../domain/maps/my_location/cubit/my_location_cubit.dart';
import '../services/internet_connection.dart';
import '../../domain/poi/poi_cubit.dart';
import 'modules.dart';
import '../../domain/maps/selected_poi/cubit/selected_poi_cubit.dart';

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
  gh.lazySingleton<FilterRepository>(
      () => FilterRepositoryImpl(get<AppStorage>()));
  gh.lazySingleton<GraphQLService>(() => GraphQLService.createGQLService());
  gh.lazySingleton<LocationService>(() => LocationServiceImp());
  gh.lazySingleton<MyLocationCubit>(
      () => MyLocationCubit(get<LocationService>()));
  gh.lazySingleton<NetworkService>(() => NetworkServiceImpl());
  gh.lazySingleton<SelectedPOICubit>(() => SelectedPOICubit());
  gh.lazySingleton<BusinessRepository>(() => BusinessRepositoryImpl(
        get<GraphQLService>(),
        get<LocationService>(),
        get<NetworkService>(),
      ));
  gh.factory<DetailCubit>(() => DetailCubit(get<BusinessRepository>()));
  gh.factory<FilterCubit>(
      () => FilterCubit(get<FilterRepository>(), get<LocationService>()));
  gh.lazySingleton<POICubit>(
      () => POICubit(get<BusinessRepository>(), get<FilterRepository>()));
  gh.lazySingleton<MapCubit>(() => MapCubit(
        get<POICubit>(),
        get<LocationService>(),
        get<SelectedPOICubit>(),
      ));
  return get;
}

class _$RegisterModule extends RegisterModule {}
