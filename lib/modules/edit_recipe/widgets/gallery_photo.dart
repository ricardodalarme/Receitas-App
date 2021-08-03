import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GalleryPhoto extends StatelessWidget {
  final String url;
  final bool filter;
  final bool last;

  GalleryPhoto(this.url, {Key? key, this.filter = false, this.last = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.cover,
      height: Get.width / 4,
      imageBuilder: (context, imageProvider) => Container(
        margin: EdgeInsets.only(top: 10, right: last ? 0 : 10),
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
