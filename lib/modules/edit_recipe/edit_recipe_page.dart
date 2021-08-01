import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/edit_recipe/components/card_title.dart';
import 'package:desafio/modules/edit_recipe/components/gallery_photo.dart';
import 'package:desafio/modules/edit_recipe/components/ingredient_photo.dart';
import 'package:desafio/modules/edit_recipe/components/topics.dart';
import 'package:flutter/material.dart';

class EditRecipePage extends StatelessWidget {
  const EditRecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey,
                  ),
                  Text(
                    LocaleKeys.backProfile.tra,
                    style: textTheme.bodyText2,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                LocaleKeys.editRecipe.tra,
                style: textTheme.headline2,
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
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
                                'Sautéed Orange & Mustard',
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
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      CardTitle(textTheme, LocaleKeys.gallery.tra),
                      SizedBox(height: 20),
                      Container(
                        height: 120,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GalleryPhoto(),
                          SizedBox(width: 10),
                          GalleryPhoto(),
                          SizedBox(width: 10),
                          GalleryPhoto(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardTitle(textTheme, LocaleKeys.ingredients.tra),
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
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardTitle(textTheme, LocaleKeys.howCook.tra),
                      SizedBox(height: 20),
                      Topics(textTheme, 1, 'Heat a Belgian waffle iron'),
                      SizedBox(height: 20),
                      Topics(textTheme, 2,
                          'Mix the flour, sugar, and baking powder together in a mixing bowl. Stir in 1 cup eggnog, butter, and the egg until well blended. Add more eggnog if needed to make a pourable batter.'),
                      SizedBox(height: 20),
                      Topics(textTheme, 3,
                          'Lightly grease or spray the waffle iron with non-stick cooking spray. Pour some batter onto the preheated waffle iron,\n\n...'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardTitle(textTheme, 'Additional Info'),
                      SizedBox(height: 40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 120,
                            child: Text(
                              'Saving Time',
                              style: textTheme.bodyText2,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              '12 Mins',
                              style: textTheme.bodyText1,
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
                              'Nutrition Facts',
                              style: textTheme.bodyText2,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '222 calories',
                                style: textTheme.bodyText1,
                              ),
                              SizedBox(height: 5),
                              Text(
                                '6.2 g fat',
                                style: textTheme.bodyText1,
                              ),
                              SizedBox(height: 5),
                              Text(
                                '7.2 g carbohydrates',
                                style: textTheme.bodyText1,
                              ),
                              SizedBox(height: 5),
                              Text(
                                '28.6 g protein',
                                style: textTheme.bodyText1,
                              ),
                              SizedBox(height: 5),
                              Text(
                                '68 mg cholesterol',
                                style: textTheme.bodyText1,
                              ),
                              SizedBox(height: 5),
                              Text(
                                '268 mg sodium',
                                style: textTheme.bodyText1,
                              ),
                            ],
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
                              'Tags',
                              style: textTheme.bodyText2,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'Sweet, Coconut, Quick, Easy, Homemade',
                              style: textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
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
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Icon(Icons.ac_unit),
                  SizedBox(width: 10),
                  Text(
                    'Remove from Cookbook',
                    style: textTheme.bodyText1,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
