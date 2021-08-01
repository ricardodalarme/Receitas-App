import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/recipes/components/recipe_card.dart';
import 'package:desafio/modules/recipes/recipes_controller.dart';
import 'package:desafio/widgets/back_label_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecipesPage extends GetView<RecipesController> {
  RecipesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
            child: Column(
              children: [
                BackLabelButton(text: LocaleKeys.backProfile.tra),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LocaleKeys.myRecipes.tra,
                      style: textTheme.headline2,
                    ),
                    Text(
                      LocaleKeys.addNews.tra,
                      style: textTheme.headline6,
                    )
                  ],
                ),
                SizedBox(height: 15),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wstern (5)',
                          style: textTheme.button,
                        ),
                        Icon(
                          BootstrapIcons.chevron_down,
                          size: 20,
                        )
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Obx(() {
              final recipes = controller.categories;
              return ListView.builder(
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(recipes[index]);
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
