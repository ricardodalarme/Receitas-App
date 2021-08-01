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
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: textTheme.button,
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
