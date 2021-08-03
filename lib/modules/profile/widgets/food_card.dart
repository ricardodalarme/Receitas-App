import 'package:cached_network_image/cached_network_image.dart';
import 'package:desafio/data/models/category_model.dart';
import 'package:desafio/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodCard extends StatefulWidget {
  final Category category;

  const FoodCard(this.category, {Key? key}) : super(key: key);

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        final route =
            Routes.recipes.replaceFirst(':id', widget.category.id.toString());
        Get.toNamed(route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
            color: Colors.grey.withOpacity(0.15),
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ],
        ),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Flexible(
              flex: 4,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: widget.category.photo,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
            ),
            Flexible(
              flex: 1,
              child: Center(
                child: Text(
                  widget.category.name,
                  style: textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
