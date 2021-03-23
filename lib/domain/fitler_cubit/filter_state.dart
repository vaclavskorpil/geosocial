part of 'filter_cubit.dart';

@freezed
abstract class FilterState with _$FilterState {
  const factory FilterState.succes({FilterDTO filter}) = _Succes;

  const factory FilterState.applyFilter({FilterDTO filter}) = _ApplyFilter;

}
