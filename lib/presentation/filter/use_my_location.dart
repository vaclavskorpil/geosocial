import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/domain/fitler/filter_cubit.dart';
import 'package:geosocial/presentation/styled_widgets/styled_togleable_card.dart';

class UseMyLocationCard extends StatelessWidget {
  final _size = 30.0;

  Widget content({double animation, Color color}) {
    return Icon(
      Icons.my_location,
      color: color,
      size: Dimens.iconSizeSmall + animation * 5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      buildWhen: (old, current) =>
          old.filter.useMyLocation != current.filter.useMyLocation,
      builder: (context, state) {
        return BlueToggleableCard(
          borderWidth: 1,
          size: _size,
          content: content,
          isToggled: state.filter.useMyLocation,
          onPressed: (isToggled) {
            var filterCubit = context.read<FilterCubit>();
            filterCubit.useMyLocation(!isToggled);
          },
        );
      },
    );
  }
}
