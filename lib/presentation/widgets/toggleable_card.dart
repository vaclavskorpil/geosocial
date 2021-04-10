
import 'package:flutter/material.dart';

typedef Widget AnimatedCardContent({
  @required double animation,
  @required Color color,
});

class ToggleableCard extends StatefulWidget {
  final double size;
  final AnimatedCardContent content;
  final bool isToggled;
  final Function(bool) onPressed;
  final Color startColor;
  final Color endColor;

  final Color startContentColor;
  final Color endContentColor;
  final Color borderColor;
  final double borderWidth;
  ToggleableCard({
    Key key,
    @required this.size,
    @required this.startColor,
    @required this.endColor,
    @required this.startContentColor,
    @required this.endContentColor,
    @required this.content,
    @required this.isToggled,
    @required this.onPressed,
    @required this.borderColor,
    this.borderWidth = 2,
  }) : super(key: key);

  @override
  _ToggleableCardState createState() => _ToggleableCardState(
      size,
      startColor,
      endColor,
      startContentColor,
      endContentColor,
      content,
      isToggled,
      onPressed,
      borderColor,
      borderWidth);
}

class _ToggleableCardState extends State<ToggleableCard>
    with SingleTickerProviderStateMixin {
  final double size;
  final AnimatedCardContent content;
  final Color startColor;
  final Color endColor;

  final Color startContentColor;
  final Color endContentColor;

  final Color borderColor;
  final double borderWidth;

  _ToggleableCardState(
      this.size,
      this.startColor,
      this.endColor,
      this.startContentColor,
      this.endContentColor,
      this.content,
      this.isToggled,
      this.onPressed,
      this.borderColor,
      this.borderWidth);

  bool isToggled;
  final Function onPressed;

  AnimationController _controller;
  Animation _shadowAndSizeAnimation;
  Animation _colorCardAnimation;
  Animation _colorContentAnimation;

  double _sizeExpand = 8;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 250),
      vsync: this,
    );

    

    _initAnimations();
    

    isToggled ? _controller.forward() : _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isToggled ? _controller.reverse() : _controller.forward();
        onPressed(isToggled);
        isToggled = !isToggled;
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(_sizeExpand / 2 -
                  _sizeExpand / 2 * _shadowAndSizeAnimation.value),
              child: Container(
                width: size + _sizeExpand * _shadowAndSizeAnimation.value,
                height: size + _sizeExpand * _shadowAndSizeAnimation.value,
                decoration: BoxDecoration(
                    color: _colorCardAnimation.value,
                    border: Border.all(
                      color: borderColor,
                      width: borderWidth -
                          borderWidth * _shadowAndSizeAnimation.value,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                          color: endColor.withOpacity(0.5),
                          blurRadius: 7 * _shadowAndSizeAnimation.value,
                          offset: Offset(
                            2 * _shadowAndSizeAnimation.value,
                            2 * _shadowAndSizeAnimation.value,
                          )),
                    ]),
                child: content(
                  animation: _shadowAndSizeAnimation.value,
                  color: _colorContentAnimation.value,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _initAnimations() {
    const Curve _curve = Curves.easeIn;

    _shadowAndSizeAnimation = Tween<double>(begin: 0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0,
          1,
          curve: _curve,
        ),
      ),
    );
    
    _colorCardAnimation = ColorTween(
      begin: startColor,
      end: endColor,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0,
          1,
          curve: _curve,
        ),
      ),
    );

    _colorContentAnimation = ColorTween(
      begin: startContentColor,
      end: endContentColor,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          1,
          curve: _curve,
        ),
      ),
    );
  
  }
}
