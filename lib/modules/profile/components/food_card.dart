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
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.recipes);
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                ),
              ),
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
      ),
    );
  }
}
