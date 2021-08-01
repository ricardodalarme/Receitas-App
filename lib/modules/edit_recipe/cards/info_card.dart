import 'package:desafio/modules/edit_recipe/components/edited_card.dart';
import 'package:flutter/material.dart';

class InfoCard extends EditedCard {
  InfoCard({Key? key}) : super(key: key);

  @override
  String get title => 'Addiotional Info';

  @override
  Widget body(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              child: Text(
                'Saving Time',
                style: textTheme.bodyText2,
              ),
            ),
            Flexible(
              child: Text(
                '12 Mins',
                style: textTheme.bodyText1,
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              child: Text(
                'Nutrition Facts',
                style: textTheme.bodyText2,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '222 calories',
                  style: textTheme.bodyText1,
                ),
                SizedBox(height: 5),
                Text(
                  '6.2 g fat',
                  style: textTheme.bodyText1,
                ),
                SizedBox(height: 5),
                Text(
                  '7.2 g carbohydrates',
                  style: textTheme.bodyText1,
                ),
                SizedBox(height: 5),
                Text(
                  '28.6 g protein',
                  style: textTheme.bodyText1,
                ),
                SizedBox(height: 5),
                Text(
                  '68 mg cholesterol',
                  style: textTheme.bodyText1,
                ),
                SizedBox(height: 5),
                Text(
                  '268 mg sodium',
                  style: textTheme.bodyText1,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              child: Text(
                'Tags',
                style: textTheme.bodyText2,
              ),
            ),
            Flexible(
              child: Text(
                'Sweet, Coconut, Quick, Easy, Homemade',
                style: textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
