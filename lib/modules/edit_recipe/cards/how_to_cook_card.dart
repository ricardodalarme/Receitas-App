import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/edit_recipe/components/edited_card.dart';
import 'package:desafio/modules/edit_recipe/components/topics.dart';
import 'package:flutter/material.dart';

class HowToCookCard extends EditedCard {
  HowToCookCard({Key? key}) : super(key: key);

  @override
  String get title => LocaleKeys.howCook.tra;

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Topics(1, 'Heat a Belgian waffle iron'),
        SizedBox(height: 20),
        Topics(2,
            'Mix the flour, sugar, and baking powder together in a mixing bowl. Stir in 1 cup eggnog, butter, and the egg until well blended. Add more eggnog if needed to make a pourable batter.'),
        SizedBox(height: 20),
        Topics(3,
            'Lightly grease or spray the waffle iron with non-stick cooking spray. Pour some batter onto the preheated waffle iron,\n\n...'),
      ],
    );
  }
}
