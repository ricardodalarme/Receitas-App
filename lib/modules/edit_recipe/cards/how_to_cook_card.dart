import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/edit_recipe/widgets/edited_card.dart';
import 'package:desafio/modules/edit_recipe/widgets/topics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HowToCookCard extends EditedCard {
  HowToCookCard({Key? key}) : super(key: key);

  @override
  String get title => LocaleKeys.howCook.tra;

  @override
  Widget body(BuildContext context) {
    return Obx(() {
      final recipe = controller.recipe.value!;

      return Column(
        children: List.generate(recipe.howToCook.length, (i) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Topics(i + 1, recipe.howToCook[i]),
          );
        }),
      );
    });
  }
}
