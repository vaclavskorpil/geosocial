import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/data_layer/entities/category.dart';
import 'package:geosocial/domain/fitler/filter_cubit.dart';

import 'neoumorphic_toggle_button.dart';

class CategoryCard extends StatelessWidget {
  final _size = 67.0;
  final Category _category;
  final IconData _icon;
  final key = UniqueKey();
  CategoryCard(this._category, this._icon);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final isToggled = context.select((FilterCubit cubit) =>
            cubit.state.filter.categories.contains(_category));
        return NeumorphicToggleButton(
          key: key,
          size: _size,
          content: (double elevation, double negativeElevation) => TextAndIcon(
              icon: _icon,
              shadowBlurAnimation: elevation,
              innerShadowAnimation: negativeElevation,
              category: _category),
          toggled: isToggled,
          onPressed: (isToggled) {
            var filterCubit = context.read<FilterCubit>();
            if (isToggled) {
              filterCubit.removeCategory(_category);
            } else {
              filterCubit.addCategory(_category);
            }
          },
        );
      },
    );
  }
}

class TextAndIcon extends StatelessWidget {
  const TextAndIcon({
    Key key,
    @required IconData icon,
    @required double shadowBlurAnimation,
    @required double innerShadowAnimation,
    @required Category category,
  })  : _icon = icon,
        _shadowBlurAnimation = shadowBlurAnimation,
        _innerShadowAnimation = innerShadowAnimation,
        _category = category,
        super(key: key);

  final IconData _icon;
  final double _shadowBlurAnimation;
  final double _innerShadowAnimation;
  final Category _category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          _icon,
          size: Dimens.iconSizeNormal +
              2 * _shadowBlurAnimation -
              2 * _innerShadowAnimation,
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            _category.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: Dimens.textFontSizeSmall +
                  _shadowBlurAnimation -
                  _innerShadowAnimation,
            ),
          ),
        ),
      ],
    );
  }
}
