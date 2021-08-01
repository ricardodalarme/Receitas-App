import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class EditedCard extends StatelessWidget {
  EditedCard({Key? key}) : super(key: key);

  String get title => '';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 5,
            blurRadius: 6,
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
                  style: textTheme.headline5,
                ),
                Icon(
                  BootstrapIcons.pencil,
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
