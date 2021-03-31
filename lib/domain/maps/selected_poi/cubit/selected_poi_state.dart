part of 'selected_poi_cubit.dart';

@freezed
abstract class SelectedPoiState with _$SelectedPoiState {
  const factory SelectedPoiState(
    Business selectedBusiness,
    double infoboxPosition,
  ) = _SelectedPoiState;

  factory SelectedPoiState.initial() =>
      SelectedPoiState(Business.empty(), -100);
}
