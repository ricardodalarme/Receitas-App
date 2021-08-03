import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/edit_recipe/widgets/edited_card.dart';
import 'package:desafio/modules/edit_recipe/widgets/ingredient_photo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IngredientsCard extends EditedCard {
  IngredientsCard({Key? key}) : super(key: key);

  @override
  String get title => LocaleKeys.ingredients.tra;

  @override
  Widget body(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Obx(
      () {
        final ingredients = controller.ingredients;
        final images = <Widget>[];
        final maxImages = 5;
        final difference = ingredients.length - maxImages + 1;

        for (var i = 0; i < ingredients.length; i++) {
          if (ingredients.length > maxImages && i == maxImages - 1) {
            break;
          }

          images.add(IngredientPhoto(ingredients[i].photo));
        }

        if (ingredients.length > maxImages)
          images.add(
            Stack(
              children: [
                IngredientPhoto(
                  ingredients[maxImages].photo,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: images),
            SizedBox(height: 10),
            Text(
              ingredients.map((element) => element.name).join(', '),
              overflow: TextOverflow.ellipsis,
              style: textTheme.caption,
            ),
          ],
        );
      },
    );
  }
}
