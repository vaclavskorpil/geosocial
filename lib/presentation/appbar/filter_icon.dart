import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/domain/businesses_cubit/business_cubit.dart';
import 'package:geosocial/domain/fitler_cubit/filter_cubit.dart';
import 'package:geosocial/presentation/common/custom_icons_icons.dart';
import 'package:geosocial/presentation/filter/filter_dialog.dart';

class FilterIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.white,
        child: IconButton(
          icon: Icon(
            CustomIcons.filter,
            size: Dimens.iconSizeNormal,
          ),
          onPressed: () {
            final businessCubit = context.read<BusinessCubit>();

            showDialog(
                context: context,
                builder: (context) {
                  return BlocProvider.value(
                    value: businessCubit,
                    child: FilterDialog(),
                  );
                });
          },
        ),
      ),
    );
  }
}
