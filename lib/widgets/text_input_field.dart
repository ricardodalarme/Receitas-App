import 'package:flutter/material.dart';

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
            Text(hintText),
            if (buttonText != null) Text(buttonText!),
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
