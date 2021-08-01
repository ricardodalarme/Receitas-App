import 'package:cached_network_image/cached_network_image.dart';
import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/edit_recipe/widgets/edited_card.dart';
import 'package:desafio/modules/edit_recipe/widgets/gallery_photo.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class GalleryCard extends EditedCard {
  GalleryCard({Key? key}) : super(key: key);

  @override
  String get title => LocaleKeys.gallery.tra;

  @override
  Widget body(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Obx(
      () {
        final recipe = controller.recipe.value;

        if (recipe == null) {
          return CircularProgressIndicator();
        }

        final images = <Widget>[];
        final maxImages = 3;
        final difference = recipe.galleryPhotos.length - maxImages + 1;

        for (var i = 0; i < recipe.galleryPhotos.length; i++) {
          if (recipe.galleryPhotos.length > maxImages && i == maxImages - 1) {
            break;
          }

          images.add(GalleryPhoto(recipe.galleryPhotos[i]));
        }

        if (recipe.galleryPhotos.length > maxImages)
          images.add(
            Stack(
              children: [
                GalleryPhoto(
                  recipe.galleryPhotos[maxImages],
                  filter: true,
                ),
                Positioned.fill(
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '+$difference',
                        style: textTheme.button,
                      )),
                ),
              ],
            ),
          );

        return Column(
          children: [
            if (recipe.galleryPhotos.isNotEmpty)
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
