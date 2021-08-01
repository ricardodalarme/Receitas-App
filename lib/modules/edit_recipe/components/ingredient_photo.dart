import 'package:flutter/material.dart';

class IngredientPhoto extends StatelessWidget {
  IngredientPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
      ),
    );
  }
}
