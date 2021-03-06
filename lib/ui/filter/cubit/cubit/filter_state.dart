part of 'filter_cubit.dart';

@freezed
abstract class FilterState with _$FilterState {
   const factory FilterState.succes(
     String location,
     String filterQuery,
     double radius,
     List<Category> categories
  )= _Succes;

  factory FilterState.initial() => FilterState.succes("","",250,[]);
}
