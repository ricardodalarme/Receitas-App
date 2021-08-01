import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/edit_recipe/components/edited_card.dart';
import 'package:desafio/modules/edit_recipe/components/ingredient_photo.dart';
import 'package:flutter/material.dart';

class IngredientsCard extends EditedCard {
  IngredientsCard({Key? key}) : super(key: key);

  @override
  String get title => LocaleKeys.ingredients.tra;

  @override
  Widget body(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IngredientPhoto(),
            SizedBox(width: 10),
            IngredientPhoto(),
            SizedBox(width: 10),
            IngredientPhoto(),
            SizedBox(width: 10),
            IngredientPhoto(),
            SizedBox(width: 10),
            IngredientPhoto(),
          ],
        ),
        Text(
          'Lemonade, coconut, peppers, egg + 5 more',
          style: textTheme.bodyText1,
        ),
      ],
    );
  }
}
