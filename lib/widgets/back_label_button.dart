import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackLabelButton extends StatelessWidget {
  final String text;
  const BackLabelButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () => Get.back(),
      child: Row(
        children: [
          Icon(
            BootstrapIcons.chevron_left,
            color: Colors.grey,
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
