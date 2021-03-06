import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geosocial/io/entities/category.dart';
import 'package:injectable/injectable.dart';

part 'filter_state.dart';
part 'filter_cubit.freezed.dart';

@injectable
class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterState.initial());

  void changeRadius(double newRadius) async {
    emit(state.copyWith(radius: newRadius));
  }

  void changeLocation(String location) async {
    emit(state.copyWith(location: location));
  }
}
