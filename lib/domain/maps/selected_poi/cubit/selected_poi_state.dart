part of 'selected_poi_cubit.dart';

@freezed
abstract class SelectedPoiState with _$SelectedPoiState {
  const factory SelectedPoiState(
    Business selectedBusiness,
    double infoboxPosition,
  ) = _SelectedPoiState;

  factory SelectedPoiState.initial() => SelectedPoiState(
      Business.empty().copyWith(photos: [
        "https://pe-images.s3.amazonaws.com/essentials/image-quality/low-res-horse.jpg"
      ]),
      -100);
}
