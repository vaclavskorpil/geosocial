import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/data_layer/entities/category.dart';
import 'package:geosocial/domain/fitler/filter_cubit.dart';
import 'package:geosocial/presentation/styled_widgets/styled_togleable_card.dart';

class CategoryCard extends StatelessWidget {
  final _size = 60.0;
  final Category category;
  final IconData icon;
  final key = UniqueKey();
  CategoryCard({
    @required this.category,
    @required this.icon,
  });

  Widget content({double animation, Color color}) {
    return TextAndIcon(
      color: color,
      animation: animation,
      icon: icon,
      text: category.title,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, state) {
        final isToggled = state.filter.categories.contains(category);

        return BlueToggleableCard(
          size: _size,
          content: content,
          isToggled: isToggled,
          onPressed: (isToggled) {
            var filterCubit = context.read<FilterCubit>();
            if (isToggled) {
              filterCubit.removeCategory(category);
            } else {
              filterCubit.addCategory(category);
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
    @required  this.icon,
    @required  this.animation,
    @required  this.color,
    @required  this.text,
  }) : super(key: key);

  final IconData icon;
  final double animation;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: Dimens.iconSizeSmall + animation * 7,
          color: color,
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: Dimens.textFontSizeSmall + animation * 3,
                color: color),
          ),
        ),
      ],
    );
  }
}
