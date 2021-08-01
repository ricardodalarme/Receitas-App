import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/edit_recipe/components/edited_card.dart';
import 'package:desafio/modules/edit_recipe/components/gallery_photo.dart';
import 'package:flutter/material.dart';

class GalleryCard extends EditedCard {
  GalleryCard({Key? key}) : super(key: key);

  @override
  String get title => LocaleKeys.gallery.tra;

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          color: Colors.grey,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GalleryPhoto(),
            SizedBox(width: 10),
            GalleryPhoto(),
            SizedBox(width: 10),
            GalleryPhoto(),
          ],
        ),
      ],
    );
  }
}
