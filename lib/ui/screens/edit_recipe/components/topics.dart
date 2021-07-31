import 'package:flutter/material.dart';

class Topics extends StatelessWidget {
  final TextTheme textTheme;
  final int numberPass;
  final String description;

  Topics(this.textTheme, this.numberPass, this.description, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Theme.of(context).primaryColor,
            ),
          ),
          child: Center(
            child: Text(
              '$numberPass',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        Flexible(
          child: Text(
            description,
            style: textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
