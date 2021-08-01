import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GalleryPhoto extends StatelessWidget {
  final String url;
  final bool filter;

  GalleryPhoto(this.url, {Key? key, this.filter = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      height: 130,
      width: 130,
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => Container(
        margin: EdgeInsets.only(top: 10, right: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
            colorFilter: filter == true
                ? ColorFilter.mode(Colors.white54, BlendMode.lighten)
                : null,
          ),
        ),
      ),
    );
  }
}
