import 'package:desafio/core/localization/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.all(Radius.circular(8));

    return Material(
      color: Colors.transparent,
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: () {},
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
                  LocaleKeys.facebookLogin.tr(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ],
            )),
      ),
    );
  }
}
