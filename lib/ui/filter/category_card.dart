import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/ui/common/inner_shadow.dart';

class CategoryCard extends StatefulWidget {
  final _isTogled;
  CategoryCard(this._isTogled);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _shadowBlurAnimation;
  Animation _innerShadowAnimation;

  bool isToggled = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    _shadowBlurAnimation =
        Tween<double>(begin: 1.0, end: 0.0).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(
        0,
        0.2,
        curve: Curves.easeOut,
      ),
    ));

    _innerShadowAnimation =
        Tween<double>(begin: 0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(
        0.2,
        0.4,
        curve: Curves.easeIn,
      ),
    ));

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          !isToggled ? _controller.forward() : _controller.reverse();
          isToggled = !isToggled;
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(
              const Radius.circular(8.0),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5 * _shadowBlurAnimation.value,
                  spreadRadius: 1 * _shadowBlurAnimation.value,
                  offset: Offset(4 * _shadowBlurAnimation.value,
                      4 * _shadowBlurAnimation.value))
            ],
          ),
          child: InnerShadow(
            offset: Offset(2 * _innerShadowAnimation.value,
                2 * _innerShadowAnimation.value,),
            blur: 3 * _innerShadowAnimation.value,
            color: Colors.black26,
            child: Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  const Radius.circular(8.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
