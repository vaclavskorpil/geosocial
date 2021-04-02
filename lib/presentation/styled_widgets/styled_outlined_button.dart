import 'package:flutter/material.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/presentation/theme/my_colors.dart';

class OutlinedButtonRed extends StatelessWidget {
  final Function onPressed;
  final String label;

  OutlinedButtonRed({
    Key key,
    this.onPressed,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: OutlinedButtonBlue(
        label: label,
        onPressed: onPressed,
      ),
      data: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
      ),
    );
  }
}

class OutlinedButtonBlue extends StatelessWidget {
  final Function onPressed;
  final String label;

  OutlinedButtonBlue({
    Key key,
    this.onPressed,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return OutlinedButton(
      style: ButtonStyle(
          elevation: _elevation,
          shadowColor: _shadowColor(color),
          backgroundColor: _backgroundColor,
          side: _side(
            colorDisabled: Theme.of(context).disabledColor,
            colorEnabled: color,
          ),
          overlayColor: MaterialStateProperty.all(color.withOpacity(0.2)),
          textStyle: MaterialStateProperty.all(
            Theme.of(context).textTheme.button,
          ),
          shape: _shape),
      onPressed: onPressed,
      child: Text(label),
    );
  }

  MaterialStateProperty<double> get _elevation =>
      MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled) ? 0 : 6);

  MaterialStateProperty<Color> _shadowColor(Color color) =>
      MaterialStateProperty.all(color.withOpacity(0.4));

  MaterialStateProperty<Color> get _backgroundColor =>
      MaterialStateProperty.resolveWith((states) =>
          states.contains(MaterialState.disabled)
              ? MyColors.backgroundWhite
              : Colors.white);

  MaterialStateProperty<BorderSide> _side(
          {Color colorDisabled, Color colorEnabled}) =>
      MaterialStateProperty.resolveWith(
        (states) => BorderSide(
          color: states.contains(MaterialState.disabled)
              ? colorDisabled
              : colorEnabled,
          style: BorderStyle.solid,
          width: 2,
        ),
      );

  MaterialStateProperty<OutlinedBorder> get _shape => MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.cornerRadiusDefault),
        ),
      );
}
