import 'package:desafio/core/localization/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(38),
        child: Column(
          children: [
            Container(color: Colors.yellow),
            Text(LocaleKeys.pleaseLogin.tr()),
            TextField(
              decoration:
                  InputDecoration(hintText: LocaleKeys.emailAddress.tr()),
            ),
            TextField(
              decoration:
                  InputDecoration(hintText: LocaleKeys.emailAddress.tr()),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(LocaleKeys.login.tr()),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(LocaleKeys.facebookLogin.tr()),
            ),
            Text(LocaleKeys.newUser.tr()),
            Text(LocaleKeys.createAccount.tr()),
          ],
        ),
      ),
    );
  }
}
