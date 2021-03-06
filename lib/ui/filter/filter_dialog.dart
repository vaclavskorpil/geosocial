import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/common/di/injector.dart';
import 'package:geosocial/ui/common/input_field.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/ui/filter/category_card.dart';

import 'cubit/cubit/filter_cubit.dart';

class FilterDialog extends StatelessWidget {
  final _controllerLocation = TextEditingController();
  final _controllerFilter = TextEditingController();
  double _radius = 250;

  final inputFieldPadding = const EdgeInsets.fromLTRB(
      0, Dimens.paddingMedium, 0, Dimens.paddingMedium);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: BlocProvider<FilterCubit>(
        create: (context) => injector<FilterCubit>(),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimens.cornerRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Dimens.paddingBig),
            child: Column(
              children: [
                Padding(
                  padding: inputFieldPadding,
                  child: InputField(_controllerLocation),
                ),
                Padding(
                  padding: inputFieldPadding,
                  child: InputField(_controllerFilter),
                ),
                RadiusSlider(),
                Row(
                  children: [
                    CategoryCard(true),
                    CategoryCard(false),
                    CategoryCard(true),
                    CategoryCard(false),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RadiusSlider extends StatelessWidget {
  const RadiusSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, state) {
        return Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Radius",
                  textAlign: TextAlign.start,
                ),
                Text(
                  "${state.radius.ceil()}m",
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Slider(
              onChanged: (value) {
                context.read<FilterCubit>()..changeRadius(value);
              },
              min: 50,
              max: 1000,
              value: state.radius,
            ),
          ],
        );
      },
    );
  }
}
