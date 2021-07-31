import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  final TextTheme textTheme;
  final String title;

  CardTitle(this.textTheme, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textTheme.headline2,
        ),
        Icon(
          Icons.edit,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
