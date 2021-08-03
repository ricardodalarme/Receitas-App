import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextInputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final String? buttonText;
  final TextEditingController? controller;

  const TextInputField({
    Key? key,
    required this.hintText,
    this.isPassword = false,
    this.buttonText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              hintText,
              style: Get.theme.textTheme.subtitle2,
            ),
            if (buttonText != null)
              Text(
                buttonText!,
                style: Get.theme.textTheme.subtitle1,
              ),
          ],
        ),
        TextField(
          obscureText: isPassword,
          controller: controller,
        ),
      ],
    );
  }
}
