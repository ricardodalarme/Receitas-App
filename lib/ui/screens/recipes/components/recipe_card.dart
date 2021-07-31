import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:desafio/core/models/recipe_model.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard(
    this.recipe, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Card(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 140,
            child: Image.network(
              recipe.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(recipe.name),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('+- ${recipe.time.toString()}'),
                        SizedBox(width: 15),
                        Text('${recipe.ingredients} ingredients'),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    OutlinedButton(
                      onPressed: null,
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                            color: Theme.of(context).primaryColor, width: 0.5),
                        padding: EdgeInsets.zero,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            BootstrapIcons.play,
                            color: theme.primaryColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Play',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: theme.primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
