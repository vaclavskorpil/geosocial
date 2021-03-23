import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

part 'map_state.dart';
part 'map_cubit.freezed.dart';

@injectable
class MapCubit extends Cubit<MapState> {
  GoogleMapController _controller;


  MapCubit() : super(MapState.initial());
}
