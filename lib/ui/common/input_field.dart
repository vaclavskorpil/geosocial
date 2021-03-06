import 'package:flutter/material.dart';
import 'package:geosocial/common/constants/dimens.dart';

class InputField extends StatefulWidget {
  final TextEditingController _controller;
  InputField(this._controller);
  @override
  _InputFieldState createState() => _InputFieldState(_controller);
}

class _InputFieldState extends State<InputField> {
  final _focusNode = FocusNode();
  bool _isIconVisible = false;

  final TextEditingController _controller;

  _InputFieldState(this._controller);

  void _testVisibility() {
    var visibility = _controller.text.isNotEmpty && _focusNode.hasFocus;

    if (visibility != _isIconVisible) {
      setState(() {
        _isIconVisible = visibility;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.inputFieldHeight,
      child: Stack(alignment: Alignment.centerRight, children: [
        TextFormField(
          focusNode: _focusNode
            ..addListener(() {
              _testVisibility();
            }),
          decoration: const InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(Dimens.paddingMedium, 0,
                  Dimens.inputFieldTrailingIconPaddingRight, 0),
              border: const OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      const Radius.circular(Dimens.textFieldCornerRadius)))),
          onChanged: (text) {
            _testVisibility();
          },
          controller: _controller,
        ),
        Visibility(
          visible: _isIconVisible,
          child: ClipOval(
            child: Material(
              color: Colors.transparent,
              child: IconButton(
                onPressed: () {
                  _controller.text = "";
                },
                icon: const Icon(
                  Icons.cancel,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
