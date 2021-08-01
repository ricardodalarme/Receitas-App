import 'package:cached_network_image/cached_network_image.dart';
import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/edit_recipe/components/edited_card.dart';
import 'package:desafio/modules/edit_recipe/components/gallery_photo.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class GalleryCard extends EditedCard {
  GalleryCard({Key? key}) : super(key: key);

  @override
  String get title => LocaleKeys.gallery.tra;

  @override
  Widget body(BuildContext context) {
    return Obx(
      () {
        final recipe = controller.recipe.value;

        if (recipe == null) {
          return CircularProgressIndicator();
        }

        var count = 2;
        var images = <Widget>[];
        if (recipe.galleryPhotos.isEmpty) {
          count = 0;
        } else if (recipe.galleryPhotos.length <= 4) {
          count = recipe.galleryPhotos.length - 1;
        }

        for (var i = 1; i <= count; i++)
          images.add(GalleryPhoto(recipe.galleryPhotos[i]));

        if (recipe.galleryPhotos.length > 4)
          images.add(Stack(
            children: [
              GalleryPhoto(recipe.galleryPhotos[4]),
              Center(
                child: Text('+10'),
              ),
            ],
          ));

        return Column(
          children: [
            if (count != 0)
              CachedNetworkImage(
                imageUrl: recipe.galleryPhotos[0],
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: images,
            )
          ],
        );
      },
    );
  }
}
