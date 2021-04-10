import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whereisthefood/data_layer/entities/business.dart';
import 'package:injectable/injectable.dart';

part 'selected_poi_state.dart';
part 'selected_poi_cubit.freezed.dart';

@lazySingleton
class SelectedPOICubit extends Cubit<SelectedPoiState> {
  SelectedPOICubit() : super(SelectedPoiState.initial());

  static const infoBoxPositionHidden = -130.0;
  void selectPoi(Business poi) async {
    //if infobox is shownt and it is not current selected poi
    //hide shown poi and wait for a while to show hiding animation
    if (state.infoboxPosition != infoBoxPositionHidden &&
        state.selectedBusiness != poi) {
      hide();
      await Future.delayed(Duration(milliseconds: 230));
    }

    emit(
      state.copyWith(selectedBusiness: poi, infoboxPosition: 0),
    );
  }

  void hide() {
    emit(state.copyWith(infoboxPosition: infoBoxPositionHidden));
  }
}
