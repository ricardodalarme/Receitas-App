import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/edit_recipe/widgets/edited_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoCard extends EditedCard {
  InfoCard({Key? key}) : super(key: key);

  @override
  String get title => LocaleKeys.additionalInfo.tra;

  @override
  Widget body(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Obx(() {
      final recipe = controller.recipe.value;

      if (recipe == null) {
        return CircularProgressIndicator();
      }

      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                child: Text(
                  LocaleKeys.savingTime.tra,
                  style: textTheme.subtitle1,
                ),
              ),
              Flexible(
                child: Text(
                  '${recipe.servingTime} Mins',
                  style: textTheme.bodyText2,
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                child: Text(
                  LocaleKeys.nutritionFacts.tra,
                  style: textTheme.subtitle1,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: recipe.nutritionFacts.map((fact) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      fact,
                      style: textTheme.bodyText2,
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                child: Text(
                  LocaleKeys.tags.tra,
                  style: textTheme.subtitle1,
                ),
              ),
              Flexible(
                child: Text(
                  recipe.tags.join(', '),
                  style: textTheme.bodyText2,
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
