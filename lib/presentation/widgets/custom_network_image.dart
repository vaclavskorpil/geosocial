import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geosocial/presentation/styled_widgets/styled_shimmer.dart';

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
        return Container(
          width: width,
          height: height,
          child: Center(
            child: Icon(Icons.error),
          ),
        );
      },
      image: NetworkImage(url),
      frameBuilder: (context, image, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) return image;

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: frame != null
              ? image
              : StyledShimmer(
                  child: Container(
                    color: Colors.grey,
                    width: width,
                    height: height,
                  ),
                ),
        );
      },
    );
  }
}
