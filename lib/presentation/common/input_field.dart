import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geosocial/common/constants/dimens.dart';


class InputField extends StatelessWidget {
  final _focusNode = FocusNode();
  bool _isIconVisible = false;
  final Function(String) _onTextChange;

  final String _text;

  InputField(this._onTextChange, this._text);

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
          TextField(
            focusNode: _focusNode
              ..addListener(() {
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
              _onTextChange(text);
            },
            controller: TextEditingController(text: _text),
          ),
          _DeleteIcon(
              isIconVisible: _isIconVisible, onTextChange: _onTextChange)
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
}

class _DeleteIcon extends StatelessWidget {
  const _DeleteIcon(
      {Key key,
      @required bool isIconVisible,
      @required Function(String) onTextChange})
      : _isIconVisible = isIconVisible,
        _onTextChange = onTextChange,
        super(key: key);

  final bool _isIconVisible;
  final Function(String) _onTextChange;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isIconVisible,
      child: ClipOval(
        child: Material(
          color: Colors.transparent,
          child: IconButton(
            onPressed: () {
              _onTextChange('');
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
