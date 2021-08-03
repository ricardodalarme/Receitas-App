import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class DropDownButton extends StatelessWidget {
  final String text;

  const DropDownButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
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
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: textTheme.bodyText1,
          ),
          Icon(
            BootstrapIcons.chevron_down,
            size: 20,
          )
        ],
      ),
    );
  }
}
