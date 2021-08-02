import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FacebookButton extends GetWidget<LoginController> {
  const FacebookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.all(Radius.circular(8));

    return Material(
      color: Colors.transparent,
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: () async {
          controller.login();
        },
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF2c66b6),
              borderRadius: borderRadius,
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  height: 35,
                ),
                SizedBox(width: 20),
                Text(
                  LocaleKeys.facebookLogin.tra,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
              ],
            )),
      ),
    );
  }
}
