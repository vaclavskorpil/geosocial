import 'package:flutter/material.dart';

import 'input_field.dart';

class LabeledInput extends StatelessWidget {
  final String _label;
  final String _text;
  final Function(String) _onTextChange;

  LabeledInput(this._label, this._onTextChange, this._text);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_label),
        const SizedBox(
          height: 1,
        ),
        InputField(_onTextChange, _text),
      ],
    );
  }
}
