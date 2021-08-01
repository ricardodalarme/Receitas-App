import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/edit_recipe/cards/gallery_card.dart';
import 'package:desafio/modules/edit_recipe/cards/how_to_cook_card.dart';
import 'package:desafio/modules/edit_recipe/cards/info_card.dart';
import 'package:desafio/modules/edit_recipe/cards/ingredients_card.dart';
import 'package:desafio/modules/edit_recipe/edit_recipe_controller.dart';
import 'package:desafio/widgets/back_label_button.dart';
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
                          child: Container(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  LocaleKeys.recipeName.tra,
                                  style: textTheme.bodyText2,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recipe.name!,
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      height: 1,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ],
                            ),
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
                          child: InkWell(
                            onTap: () => {},
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Westen (5)',
                                      style: textTheme.bodyText1,
                                    ),
                                    Icon(Icons.arrow_downward_sharp)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () => {},
                            child: Container(
                              height: 50,
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
