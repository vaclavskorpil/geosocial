import 'package:flutter/material.dart';

import 'filter_icon.dart';

class MyAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(10),
              bottomRight: const Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 4),
                spreadRadius: 0)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FilterIcon(),
          SizedBox.fromSize(
            size: const Size.fromWidth(10),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}

