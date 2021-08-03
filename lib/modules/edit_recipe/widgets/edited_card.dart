import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:desafio/modules/edit_recipe/edit_recipe_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditedCard extends GetWidget<EditRecipeController> {
  EditedCard({Key? key}) : super(key: key);

  String get title => '';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
           color: Colors.grey.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 3,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: textTheme.bodyText1,
                ),
                Icon(
                  BootstrapIcons.pencil,
                  size: 18,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
            SizedBox(height: 30),
            body(context),
          ],
        ),
      ),
    );
  }

  Widget body(BuildContext context) => Container();
}
