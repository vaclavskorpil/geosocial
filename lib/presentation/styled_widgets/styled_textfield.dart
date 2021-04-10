import 'package:flutter/material.dart';
import 'package:whereisthefood/common/constants/dimens.dart';
import 'package:whereisthefood/presentation/theme/my_colors.dart';

class StyledTextField extends StatelessWidget {
  final TextEditingController contoller;
  final String label;
  final String errorMessage;
  final bool isError;
  final bool enabled;

  const StyledTextField(
      {Key key,
      @required this.label,
      @required this.contoller,
      this.errorMessage,
      this.isError,
      this.enabled})
      : super(key: key);

  Color _getEnabledColor() {
    return enabled ? Colors.white : MyColors.backgroundWhite;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: key,
      enabled: enabled,
      decoration: InputDecoration(
          enabled: enabled,
          filled: true,
          fillColor: _getEnabledColor(),
          disabledBorder: _getOutlineInputBorder(Colors.grey),
          border: _getOutlineInputBorder(Colors.blue),
          enabledBorder: _getOutlineInputBorder(Colors.blue),
          focusedBorder: _getOutlineInputBorder(Colors.blue, width: 2),
          errorBorder: _getOutlineInputBorder(Colors.red),
          focusColor: Colors.blue,
          errorMaxLines: 1,
          errorStyle: TextStyle(fontSize: 0),
          errorText: isError ?? false ? errorMessage ?? "" : null,
          isDense: true,
          contentPadding: const EdgeInsets.all(Dimens.paddingMedium),
          labelText: label,
          labelStyle: Theme.of(context).textTheme.headline3,
          floatingLabelBehavior: FloatingLabelBehavior.auto),
      controller: contoller,
    );
  }

  OutlineInputBorder _getOutlineInputBorder(Color color, {double width = 1}) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        const Radius.circular(
          Dimens.textFieldCornerRadius,
        ),
      ),
      borderSide: BorderSide(
        width: width,
        color: color,
      ),
    );
  }
}
