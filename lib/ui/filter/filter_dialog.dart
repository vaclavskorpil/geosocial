import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/common/di/injector.dart';
import 'package:geosocial/io/entities/category.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/ui/common/labeled_input_field.dart';
import 'package:geosocial/ui/filter/category_card.dart';
import 'package:geosocial/ui/theme/my_colors.dart';

import 'cubit/cubit/filter_cubit.dart';

class FilterDialog extends StatelessWidget {
  final inputFieldPadding = const EdgeInsets.fromLTRB(
      0, Dimens.paddingMedium, 0, Dimens.paddingMedium);

  final _controllerLocation = TextEditingController();
  final _controllerFilter = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: BlocProvider<FilterCubit>(
        create: (context) => injector<FilterCubit>(),
        child: BlocListener<FilterCubit, FilterState>(
          listener: (context, state) {
            if (state.applyFilter) {
              Navigator.pop(context);
            }
          },
          child: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(
                  color: MyColors.backgroundWhite,
                  borderRadius: BorderRadius.circular(Dimens.cornerRadius),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Dimens.paddingBig),
                  child: Column(
                    children: [
                      LocationInput(
                        inputFieldPadding: inputFieldPadding,
                        controllerLocation: _controllerLocation,
                      ),
                      FilterTermInput(
                        inputFieldPadding: inputFieldPadding,
                        controllerFilter: _controllerFilter,
                      ),
                      RadiusSlider(),
                      PriceLevel(),
                      const SizedBox(height: 10),
                      Categories(),
                      const SizedBox(height: 10),
                      ButtonRow()
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

class LocationInput extends StatelessWidget {
  const LocationInput({
    Key key,
    @required this.inputFieldPadding,
    @required TextEditingController controllerLocation,
  })  : _controllerLocation = controllerLocation,
        super(key: key);

  final EdgeInsets inputFieldPadding;
  final TextEditingController _controllerLocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: inputFieldPadding,
      child: BlocBuilder<FilterCubit, FilterState>(
        builder: (context, state) {
          return LabeledInput(
            "Location",
            _controllerLocation,
            (text) {
              context.read<FilterCubit>().changeLocation(text);
            },
          );
        },
      ),
    );
  }
}

class FilterTermInput extends StatelessWidget {
  const FilterTermInput({
    Key key,
    @required this.inputFieldPadding,
    @required TextEditingController controllerFilter,
  })  : _controllerFilter = controllerFilter,
        super(key: key);

  final EdgeInsets inputFieldPadding;
  final TextEditingController _controllerFilter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: inputFieldPadding,
      child: BlocBuilder<FilterCubit, FilterState>(
        builder: (context, state) {
          return LabeledInput(
            "Filter query",
            _controllerFilter,
            (text) {
              context.read<FilterCubit>().changeSearchTern(text);
            },
          );
        },
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: OutlinedButton(
          onPressed: () {},
          child: Text("Cancel"),
        )),
        const SizedBox(width: 12),
        Expanded(
            child: OutlinedButton(
          onPressed: () {
            context.read<FilterCubit>()..applyFilter();
          },
          child: Text("Apply filter"),
        ))
      ],
    );
  }
}

class PriceLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, state) {
        return RangeSlider(
            max: 4,
            min: 1,
            divisions: 3,
            labels: RangeLabels(
              _priceLevelToText(state.priceLevel.start),
              _priceLevelToText(state.priceLevel.end),
            ),
            values: state.priceLevel,
            onChanged: (priceLevel) {
              context.read<FilterCubit>()..changePriceLevel(priceLevel);
            });
      },
    );
  }

  static String _priceLevelToText(double _priceLevel) {
    var sb = "";
    for (int i = 0; i < _priceLevel; i++) {
      sb += "\$";
    }
    return sb;
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryCard(
              Category("Restaurace", "rest"),
              Icons.restaurant,
            ),
            CategoryCard(
              Category("Drink", "rest"),
              Icons.local_drink,
            ),
            CategoryCard(
              Category("Víno", "rest"),
              Icons.restaurant,
            ),
          ],
        ),
        const SizedBox(height: 10),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     CategoryCard(
        //       Category("Restaurace", "rest"),
        //       Icons.restaurant,
        //     ),
        //     CategoryCard(
        //       Category("Drink", "rest"),
        //       Icons.local_drink,
        //     ),
        //     CategoryCard(
        //       Category("Víno", "rest"),
        //       Icons.restaurant,
        //     ),
        //   ],
        // ),
        // const SizedBox(height: 10),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     CategoryCard(
        //       Category("Restaurace", "rest"),
        //       Icons.restaurant,
        //     ),
        //     CategoryCard(
        //       Category("Drink", "rest"),
        //       Icons.local_drink,
        //     ),
        //     CategoryCard(
        //       Category("Víno", "rest"),
        //       Icons.restaurant,
        //     ),
        //   ],
        // )
      ],
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
