import 'package:flutter/material.dart';

class StyledCircularLoading extends StatelessWidget {
  const StyledCircularLoading();
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: 2,
    );
    
  }
}
