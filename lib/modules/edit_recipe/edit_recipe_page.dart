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
  const EditRecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(25),
            child: Obx(
              () {
                final recipe = controller.recipe.value;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BackLabelButton(text: LocaleKeys.backRecipes.tra),
                    SizedBox(height: 20),
                    Text(
                      LocaleKeys.editRecipe.tra,
                      style: textTheme.headline2,
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              imageUrl: recipe.coverPhoto!,
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(width: 20),
                        Expanded(
                          child: TextInputField(
                            hintText: LocaleKeys.recipeName.tra,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    GalleryCard(),
                    SizedBox(height: 20),
                    IngredientsCard(),
                    SizedBox(height: 20),
                    HowToCookCard(),
                    SizedBox(height: 20),
                    InfoCard(),
                    SizedBox(height: 40),
                    Text('Save To'),
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
                              height: 60,
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
                                  'Save Recipe',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Post to Feed'),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(BootstrapIcons.trash),
                        SizedBox(width: 10),
                        Text(
                          'Remove from Cookbook',
                          style: textTheme.bodyText1,
                        )
                      ],
                    )
                  ],
                );
              },
            )),
      ),
    );
  }
}
