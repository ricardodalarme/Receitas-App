import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:desafio/data/models/recipe_model.dart';
import 'package:desafio/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: InkWell(
        onTap: () {
          final b = Routes.editRecipe.replaceFirst(':id', recipe.id.toString());

          Get.toNamed(b);
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 5,
                blurRadius: 6,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(
                    recipe.coverPhoto!,
                    height: 150,
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.name!,
                      style: textTheme.headline5,
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              '+- ${recipe.servingTime} min',
                            ),
                            SizedBox(width: 15),
                            Text('${recipe.ingredientsId!.length} ingredients'),
                          ],
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                BootstrapIcons.play,
                                color: theme.primaryColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Cook',
                                style: textTheme.caption!
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
        ),
      ),
    );
  }
}
