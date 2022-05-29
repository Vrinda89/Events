import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EventImage extends StatelessWidget {
  final String? url;
  final double? width;
  final double? height;
  final BoxFit boxFit;

  const EventImage(
      {Key? key, this.url, this.width, this.height, this.boxFit = BoxFit.fill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        child: CachedNetworkImage(
          fit: boxFit,
          width: width,
          height: height,
          imageUrl: url ?? "",
          placeholder: (context, url) => const SizedBox(
            child: Image(
                image: AssetImage('images/img_placeholder.png'),
                fit: BoxFit.fill),
          ),
          errorWidget: (context, url, error) => const Image(
              image: AssetImage('images/img_placeholder.png'),
              fit: BoxFit.fill),
        ));
  }
}
