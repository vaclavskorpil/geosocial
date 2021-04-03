import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/data_layer/dependenci_injection/injector.dart';
import 'package:geosocial/data_layer/entities/category.dart';
import 'package:geosocial/domain/fitler/filter_cubit.dart';
import 'package:geosocial/domain/poi/poi_cubit.dart';

import 'package:geosocial/presentation/filter/category_card.dart';
import 'package:geosocial/presentation/filter/use_my_location.dart';
import 'package:geosocial/presentation/styled_widgets/styled_outlined_button.dart';
import 'package:geosocial/presentation/styled_widgets/styled_snackbar.dart';
import 'package:geosocial/presentation/styled_widgets/styled_textfield.dart';

import 'package:geosocial/presentation/theme/my_colors.dart';
import 'package:vibration/vibration.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      clipBehavior: Clip.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: BlocProvider<FilterCubit>(
        create: (context) => injector<FilterCubit>(),
        child: MultiBlocListener(
          listeners: [
            BlocListener<FilterCubit, FilterState>(listenWhen: (_, current) {
              return current.failure.isSome() || current.applyFilter;
            }, listener: (context, state) {
              if (state.failure.isSome()) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(styledSnackBar("Something went wrong."));
              } else if (state.applyFilter) {
                //filter was sucesflully aplied, fetch new businesses
                context.read<POICubit>()..fetchNewBusinesses();
                Navigator.pop(context);
              }
            }),
            BlocListener<FilterCubit, FilterState>(
              listenWhen: (old, current) => old.isValid != current.isValid,
              listener: (context, state) async {
                if (!state.isValid) {
                  if (await Vibration.hasVibrator()) {
                    Vibration.vibrate(duration: 150);
                  }
                }
              },
            )
          ],
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: MyColors.backgroundWhite,
                borderRadius: BorderRadius.circular(Dimens.cornerRadiusDefault),
              ),
              child: Padding(
                padding: const EdgeInsets.all(Dimens.paddingBig),
                child: Column(
                  children: [
                    LocationInput(),
                    FilterTermInput(),
                    RadiusSlider(),
                    PriceLevel(),
                    const SizedBox(height: Dimens.paddingDefault),
                    Categories(),
                    const SizedBox(height: Dimens.paddingDefault),
                    ButtonRow()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LocationInput extends StatelessWidget {
  const LocationInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  final isError = context
                      .select((FilterCubit cubit) => !cubit.state.isValid);
                  final isEnabled = context.select(
                      (FilterCubit cubit) => !cubit.state.filter.useMyLocation);
                  return Container(
                    // height must be specified to prevent inputField wrom jumping up
                    // when error message should be shown
                    height: 62,
                    child: StyledTextField(
                      key: Key("location_text_input"),
                      enabled: isEnabled,
                      isError: isError,
                      contoller: context
                          .read<FilterCubit>()
                          .locationTextEditingController,
                      label: "Location",
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 10),
            UseMyLocationCard(),
          ],
        ),
        Positioned(
          left: 0,
          bottom: 5,
          child: BlocBuilder<FilterCubit, FilterState>(
              buildWhen: (old, current) => old.isValid != current.isValid,
              builder: (context, state) {
                return AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),
                  child: state.isValid
                      ? Container()
                      : Text(
                          "You must specify location or use your location",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.red),
                          overflow: TextOverflow.ellipsis,
                        ),
                );
              }),
        )
      ],
    );
  }
}

class FilterTermInput extends StatelessWidget {
  const FilterTermInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StyledTextField(
        enabled: true,
        label: "Search term",
        contoller: context.read<FilterCubit>().filterTextEditingController);
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
          child: OutlinedButtonRed(
            label: "Cancel",
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
            child: BlocBuilder<FilterCubit, FilterState>(
          buildWhen: (oldstate, newstate) =>
              oldstate.isValid != newstate.isValid,
          builder: (context, state) => OutlinedButtonBlue(
            //if state is not valid, null is passed as
            //[onPressed] value. This will disable button
            onPressed: state.isValid
                ? () {
                    context.read<FilterCubit>()..applyFilter();
                  }
                : null,
            label: "Apply filter",
          ),
        ))
      ],
    );
  }
}

class PriceLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Price level",
          style: Theme.of(context).textTheme.headline3,
        ),
        Expanded(
          child: Builder(
            builder: (context) {
              final priceRange = context.select((FilterCubit cubit) =>
                  cubit.state.filter.priceLevelRangeValue());

              return RangeSlider(
                  max: 4,
                  min: 1,
                  divisions: 3,
                  labels: RangeLabels(
                    _priceLevelToText(priceRange.start),
                    _priceLevelToText(priceRange.end),
                  ),
                  values: priceRange,
                  onChanged: (priceLevel) {
                    context.read<FilterCubit>()..changePriceLevel(priceLevel);
                  });
            },
          ),
        ),
      ],
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryCard(
              category: Category("Burgers", "burgers"),
              icon: FontAwesomeIcons.hamburger,
            ),
            CategoryCard(
              category: Category("Coffee", "coffee"),
              icon: FontAwesomeIcons.coffee,
            ),
            CategoryCard(
              category: Category("Desserts", "deserts"),
              icon: FontAwesomeIcons.birthdayCake,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryCard(
              category: Category("Ice cream", "icecream"),
              icon: FontAwesomeIcons.iceCream,
            ),
            CategoryCard(
              category: Category("Bars", "bars"),
              icon: FontAwesomeIcons.cocktail,
            ),
            CategoryCard(
              category: Category("Wine bars", "winebars"),
              icon: FontAwesomeIcons.wineGlassAlt,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryCard(
              category: Category("Restaurants", "restaurants"),
              icon: Icons.restaurant,
            ),
            CategoryCard(
              category: Category("Beer", "beergarden"),
              icon: FontAwesomeIcons.beer,
            ),
            CategoryCard(
              category: Category("Vegan", "vegan"),
              icon: FontAwesomeIcons.leaf,
            ),
          ],
        ),
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
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Radius",
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headline3,
            ),
            Builder(builder: (context) {
              final radius = context
                  .select((FilterCubit cubit) => cubit.state.filter.radius);

              return Text(
                "${radius.ceil()}m",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headline3.copyWith(
                      color:
                          Color.lerp(Colors.grey, Colors.blue, radius / 20000),
                      fontWeight: FontWeight.lerp(
                          FontWeight.w300, FontWeight.w700, radius / 20000),
                    ),
              );
            }),
          ],
        ),
        Builder(builder: (context) {
          final radius =
              context.select((FilterCubit cubit) => cubit.state.filter.radius);

          return Slider(
            onChanged: (value) {
              context.read<FilterCubit>()..changeRadius(value);
            },
            min: 50,
            max: 20000,
            value: radius,
          );
        }),
      ],
    );
  }
}
