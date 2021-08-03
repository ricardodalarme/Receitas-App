import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/edit_recipe/cards/gallery_card.dart';
import 'package:desafio/modules/edit_recipe/cards/how_to_cook_card.dart';
import 'package:desafio/modules/edit_recipe/cards/info_card.dart';
import 'package:desafio/modules/edit_recipe/cards/ingredients_card.dart';
import 'package:desafio/modules/edit_recipe/edit_recipe_controller.dart';
import 'package:desafio/widgets/back_label_button.dart';
import 'package:desafio/widgets/drop_down_button.dart';
import 'package:desafio/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class EditRecipePage extends GetView<EditRecipeController> {
  EditRecipePage({Key? key}) : super(key: key);

  final cards = [
    GalleryCard(),
    IngredientsCard(),
    HowToCookCard(),
    InfoCard(),
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(25),
        child: Obx(
          () {
            final recipe = controller.recipe.value;

            if (recipe == null) {
              return CircularProgressIndicator();
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackLabelButton(text: LocaleKeys.backRecipes.tra),
                SizedBox(height: 20),
                Text(
                  LocaleKeys.editRecipe.tra,
                  style: textTheme.headline3,
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl: recipe.coverPhoto,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        )),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextInputField(
                        hintText: LocaleKeys.recipeName.tra,
                        controller: controller.nameController,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                ...cards,
                SizedBox(height: 20),
                Text(LocaleKeys.saveTo.tra),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: DropDownButton(text: 'Western (5)'),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: () => {},
                        child: Container(
                          height: 52,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              LocaleKeys.saveRecipe.tra,
                              style: textTheme.bodyText1!.copyWith(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(LocaleKeys.postFeed.tra),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      BootstrapIcons.trash,
                      size: 14,
                    ),
                    SizedBox(width: 10),
                    Text(
                      LocaleKeys.removeFromCookbook.tra,
                      style: textTheme.bodyText2,
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
