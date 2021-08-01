import 'package:cached_network_image/cached_network_image.dart';
import 'package:desafio/data/models/category_model.dart';
import 'package:desafio/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodCard extends StatelessWidget {
  final Category category;

  const FoodCard(this.category, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        final route =
            Routes.recipes.replaceFirst(':id', category.id.toString());
        Get.toNamed(route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 6,
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: CachedNetworkImage(
                  imageUrl: category.photo,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
            SizedBox(height: 10),
            Center(
              child: Text(
                category.name,
                style: textTheme.headline5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}