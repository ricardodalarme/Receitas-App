import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class IngredientPhoto extends StatelessWidget {
  final String url;
  final bool filter;

  IngredientPhoto(this.url, {Key? key, this.filter = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      height: 50,
      width: 50,
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
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
