part of 'filter_cubit.dart';

@freezed
abstract class FilterState with _$FilterState {
   const factory FilterState.succes(
     String location,
     String filterQuery,
     double radius,
     RangeValues priceLevel,
     List<Category> categories,
     bool applyFilter 
  )= _Succes;

  
  factory FilterState.initial() => FilterState.succes("","",250,RangeValues(1,4), [], false);
}
