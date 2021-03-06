import 'package:flutter/material.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/ui/common/inner_shadow.dart';

class CategoryCard extends StatelessWidget {
  final _isTogled;
  CategoryCard(this._isTogled);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 47,
        height: 47,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              const Radius.circular(Dimens.cornerRadius),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(2, 2),
                blurRadius: 10,
                spreadRadius: 1
              )
            ]),
        child: InnerShadow(
          offset: Offset(2, 2),
          blur: 3,
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}
