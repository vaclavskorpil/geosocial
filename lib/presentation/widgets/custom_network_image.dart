import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geosocial/presentation/styled_widgets/styled_circular_loading.dart';

class CustomNetworkImage extends StatelessWidget {
  final String url;

  final BoxFit fit;
  final double width;
  final double height;

  CustomNetworkImage({@required this.url, this.fit, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Image(
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (context, obj, stacktrace) {
        return Center(
          child: Icon(Icons.error),
        );
      },
      image: NetworkImage(url),
      frameBuilder: (context, child, frame, isLoaded) {
        if (isLoaded) return child;
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Builder(
            builder: (context) {
              if (child != null) return child;

              return const Center(
                child: const StyledCircularLoading(),
              );
            },
          ),
        );
      },
    );
  }
}
