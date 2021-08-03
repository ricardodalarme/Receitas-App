import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/recipes/recipes_controller.dart';
import 'package:desafio/modules/recipes/widgets/recipe_card.dart';
import 'package:desafio/widgets/back_label_button.dart';
import 'package:desafio/widgets/drop_down_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecipesPage extends GetView<RecipesController> {
  RecipesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            BackLabelButton(text: LocaleKeys.backProfile.tra),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleKeys.myRecipes.tra,
                  style: textTheme.headline3,
                ),
                Text(
                  LocaleKeys.addNews.tra,
                  style: textTheme.headline6,
                )
              ],
            ),
            SizedBox(height: 40),
            Obx(() {
              if (controller.category.value != null)
                return DropDownButton(
                    text:
                        '${controller.category.value!.name} (${controller.recipes.length})');
              return Container();
            }),
            SizedBox(height: 10),
            Obx(() {
              final recipes = controller.recipes;
              return ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(recipes[index]);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
