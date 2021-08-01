import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class EditedCard extends StatelessWidget {
  EditedCard({Key? key}) : super(key: key);

  String get title => '';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      color: Colors.white,
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
