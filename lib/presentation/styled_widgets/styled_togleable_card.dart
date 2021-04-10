import 'package:flutter/material.dart';
import 'package:whereisthefood/presentation/theme/my_colors.dart';
import 'package:whereisthefood/presentation/widgets/toggleable_card.dart';

class BlueToggleableCard extends StatelessWidget {
  final double size;
  final bool isToggled;
  final Function(bool) onPressed;
  final AnimatedCardContent content;
  final double borderWidth;

  BlueToggleableCard({
    @required this.size,
    @required this.content,
    @required this.isToggled,
    @required this.onPressed,
    this.borderWidth = 2,
  });
  @override
  Widget build(BuildContext context) {
    return ToggleableCard(
      key: key,
      size: size,
      isToggled: isToggled,
      borderColor: Colors.grey,
      startColor: MyColors.backgroundWhite,
      endColor: Colors.blue,
      startContentColor: Colors.grey,
      endContentColor: Colors.white,
      onPressed: onPressed,
      content: content,
      borderWidth: borderWidth,
    );
  }
}
