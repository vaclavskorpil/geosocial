import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class StyledShimmer extends StatelessWidget {
  final Widget child;

  StyledShimmer({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: child,
      baseColor: Colors.grey[300],
      highlightColor: Colors.grey[100],
    );
  }
}
