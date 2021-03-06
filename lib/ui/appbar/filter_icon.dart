import 'package:flutter/material.dart';
import 'package:geosocial/ui/common/custom_icons_icons.dart';
import 'package:geosocial/ui/filter/filter_dialog.dart';
import 'package:geosocial/common/constants/dimens.dart';

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
