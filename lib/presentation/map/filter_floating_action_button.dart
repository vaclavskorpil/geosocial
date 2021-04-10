import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whereisthefood/domain/poi/poi_cubit.dart';
import 'package:whereisthefood/presentation/filter/filter_dialog.dart';
import 'package:whereisthefood/presentation/theme/custom_icons_icons.dart';

class FilterFloationActionButton extends StatelessWidget {
  const FilterFloationActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
        width: 50,
        height: 50,
        child: Material(
          shadowColor: Colors.blue,
          elevation: 5,
          color: Colors.blue,
          child: InkWell(
            onTap: () {
              final businessCubit = context.read<POICubit>();

              showDialog(
                  context: context,
                  builder: (context) {
                    return BlocProvider.value(
                      value: businessCubit,
                      child: FilterDialog(),
                    );
                  });
            },
            child: Icon(
              CustomIcons.filter,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
