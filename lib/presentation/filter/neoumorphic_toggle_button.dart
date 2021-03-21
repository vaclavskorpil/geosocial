import 'package:flutter/material.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/presentation/theme/my_colors.dart';

typedef Widget NeumorficAnimatedWidget(
    double elevation, double negativeElevation);

class NeumorphicToggleButton extends StatefulWidget {
  final double size;
  final NeumorficAnimatedWidget content;
  final bool toggled;
  final Function(bool) onPressed;


  
  NeumorphicToggleButton(
    {Key key, this.size, this.content, this.toggled, this.onPressed,})
      : super(key: key);

  @override
  _NeumorphicToggleButtonState createState() =>
      _NeumorphicToggleButtonState(size, content, this.toggled, this.onPressed);
}

class _NeumorphicToggleButtonState extends State<NeumorphicToggleButton>
    with SingleTickerProviderStateMixin {
  final double _size;
  final NeumorficAnimatedWidget _content;
  _NeumorphicToggleButtonState(
      this._size, this._content, this._isToggled, this._onPressed);

  bool _isToggled;
  final Function _onPressed;

  AnimationController _controller;
  Animation _shadowBlurAnimation;
  Animation _innerShadowAnimation;
  Animation _colorAnimation;
  Animation _colorWhiteAnimation;
  static const Curve _curve = Curves.easeInCubic;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 250),
      vsync: this,
    );

    _initAnimations();

     _isToggled ? _controller.forward() : _controller.reverse();

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        !_isToggled ? _controller.forward() : _controller.reverse();
        _onPressed(_isToggled);
        _isToggled = !_isToggled;
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => Stack(
          alignment: Alignment.center,
          children: [
            if (_shadowBlurAnimation.value > 0.1)
              _OuterShadow(
                  size: _size, shadowBlurAnimation: _shadowBlurAnimation),
            if (_innerShadowAnimation.value > 0.0)
              _InnerShadow(
                  size: _size,
                  colorAnimation: _colorAnimation,
                  colorWhiteAnimation: _colorWhiteAnimation),
            Container(
              width: _size,
              height: _size,
              child: _content(
                  _shadowBlurAnimation.value, _innerShadowAnimation.value),
            )
          ],
        ),
      ),
    );
  }

  

  void _initAnimations() {
    _shadowBlurAnimation =
        Tween<double>(begin: 1.0, end: 0.0).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(
        0,
        0.5,
        curve: _curve,
      ),
    ));

    _innerShadowAnimation =
        Tween<double>(begin: 0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(
        0.5,
        1,
        curve: _curve.flipped,
      ),
    ));

    _colorAnimation =
        ColorTween(begin: MyColors.backgroundWhite, end: Colors.grey.shade400)
            .animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(
        0.5,
        1,
        curve: _curve.flipped,
      ),
    ));

    _colorWhiteAnimation =
        ColorTween(begin: MyColors.backgroundWhite, end: Colors.white)
            .animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(
        0.5,
        1,
        curve: _curve.flipped,
      ),
    ));
  }
}

class _OuterShadow extends StatelessWidget {
  const _OuterShadow({
    Key key,
    @required double size,
    @required Animation shadowBlurAnimation,
  })  : _size = size,
        _shadowBlurAnimation = shadowBlurAnimation,
        super(key: key);

  final double _size;
  final Animation _shadowBlurAnimation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _size,
      height: _size,
      decoration: BoxDecoration(
        color: MyColors.backgroundWhite,
        borderRadius: const BorderRadius.all(
          const Radius.circular(8.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5 * _shadowBlurAnimation.value,
            spreadRadius: 0 * _shadowBlurAnimation.value,
            offset: Offset(
              4 * _shadowBlurAnimation.value,
              4 * _shadowBlurAnimation.value,
            ),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 5 * _shadowBlurAnimation.value,
            spreadRadius: 0 * _shadowBlurAnimation.value,
            offset: -Offset(
              4 * _shadowBlurAnimation.value,
              4 * _shadowBlurAnimation.value,
            ),
          )
        ],
      ),
    );
  }
}

class _InnerShadow extends StatelessWidget {
  const _InnerShadow({
    Key key,
    @required double size,
    @required Animation colorAnimation,
    @required Animation colorWhiteAnimation,
  })  : _size = size,
        _colorAnimation = colorAnimation,
        _colorWhiteAnimation = colorWhiteAnimation,
        super(key: key);

  final double _size;
  final Animation _colorAnimation;
  final Animation _colorWhiteAnimation;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        const Radius.circular(Dimens.textFieldCornerRadius),
      ),
      child: Container(
        width: _size,
        height: _size,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            const Radius.circular(Dimens.textFieldCornerRadius),
          ),
          boxShadow: [
            BoxShadow(
              color: _colorAnimation.value,
              blurRadius: 3,
              spreadRadius: 1,
              offset: const Offset(0, 0),
            ),
            BoxShadow(
              color: _colorWhiteAnimation.value,
              blurRadius: 6,
              offset: Offset(2.5, 2.5),
            )
          ],
        ),
      ),
    );
  }

  
}