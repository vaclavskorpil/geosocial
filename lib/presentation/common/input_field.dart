import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geosocial/common/constants/dimens.dart';

class InputField extends StatefulWidget {
  final TextEditingController _controller;
  final Function(String) _onTextChange;

  InputField(this._controller, this._onTextChange);
  @override
  _InputFieldState createState() =>
      _InputFieldState(_controller, _onTextChange);
}

class _InputFieldState extends State<InputField> {
  final _focusNode = FocusNode();
  bool _isIconVisible = false;
  final Function(String) _onTextChange;

  final TextEditingController _controller;

  _InputFieldState(this._controller, this._onTextChange);

  void _testVisibility() {
    var visibility = _controller.text.isNotEmpty && _focusNode.hasFocus;

    if (visibility != _isIconVisible) {
      setState(() {
        _isIconVisible = visibility;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      _onTextChange(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        const Radius.circular(Dimens.textFieldCornerRadius),
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 3,
              spreadRadius: 1,
              offset: const Offset(0, 0),
            ),
            const BoxShadow(
              color: Colors.white,
              blurRadius: 6,
              offset: const Offset(2.5, 2.5),
            )
          ],
          borderRadius: const BorderRadius.all(
            const Radius.circular(Dimens.textFieldCornerRadius),
          ),
        ),
        height: Dimens.inputFieldHeight,
        child: Stack(alignment: Alignment.centerRight, children: [
          TextFormField(
            focusNode: _focusNode
              ..addListener(() {
                _testVisibility();
              }),
            decoration: InputDecoration(
              enabledBorder: _getOutlineInputBorder(Colors.black12),
              focusedBorder: _getOutlineInputBorder(Colors.blue),
              contentPadding: const EdgeInsets.fromLTRB(
                Dimens.paddingMedium,
                0,
                Dimens.inputFieldTrailingIconPaddingRight,
                0,
              ),
            ),
            onChanged: (text) {
              _testVisibility();
            },
            controller: _controller,
          ),
          _DeleteIcon(isIconVisible: _isIconVisible, controller: _controller)
        ]),
      ),
    );
  }

  OutlineInputBorder _getOutlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        const Radius.circular(
          Dimens.textFieldCornerRadius,
        ),
      ),
      borderSide: BorderSide(
        width: 1,
        color: color,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _DeleteIcon extends StatelessWidget {
  const _DeleteIcon({
    Key key,
    @required bool isIconVisible,
    @required TextEditingController controller,
  })  : _isIconVisible = isIconVisible,
        _controller = controller,
        super(key: key);

  final bool _isIconVisible;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Visibility(
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
    );
  }
}
