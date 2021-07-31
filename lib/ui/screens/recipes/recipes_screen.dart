import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:desafio/core/localization/locale_extension.dart';
import 'package:desafio/core/models/recipe_model.dart';
import 'package:desafio/ui/screens/recipes/components/recipe_card.dart';
import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
  RecipesScreen({Key? key}) : super(key: key);

  final recipes = [
    Recipe(
      name: 'Cooked Coconut Mussels',
      time: Duration(minutes: 5),
      ingredients: 4,
      imageUrl:
          'https://img.hellofresh.com/f_auto,fl_lossy,q_auto,w_1200/hellofresh_s3/image/coconut-curry-mussels-0ab0f8a8.jpg',
    ),
    Recipe(
      name: 'Banana and Mandarin Buns',
      time: Duration(minutes: 45),
      ingredients: 4,
      imageUrl: 'https://img.rasset.ie/00160533-1600.jpg',
    ),
    Recipe(
      name: 'Fried Salty & Sour Snapper',
      time: Duration(minutes: 45),
      ingredients: 4,
      imageUrl:
          'https://www.pbs.org/food/wp-content/blogs.dir/2/files/2018/02/Imperial-Sweet-Fish-horizontal.jpg',
    ),
    Recipe(
      name: 'Tenderized HazeInut Pheasant',
      time: Duration(minutes: 45),
      ingredients: 4,
      imageUrl:
          'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F6069722.jpg',
    ),
  ];

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
                          offset: Offset(0, 3), // changes position of shadow
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
          Expanded(
            child: ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                return RecipeCard(recipes[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
