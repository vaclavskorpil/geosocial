import 'package:flutter/material.dart';
import 'package:geosocial/common/constants/dimens.dart';
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
            showDialog(context: context, builder: (context) => FilterDialog());
          },
        ),
      ),
    );
  }
}
