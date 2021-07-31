import 'package:desafio/core/localization/locale_keys.g.dart';
import 'package:desafio/ui/screens/login/components/facebook_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(height: 285, color: Colors.yellow),
                Positioned(
                  left: 38,
                  top: 133,
                  child: Text(
                    LocaleKeys.welcomeBack.tr(),
                    style: textTheme.headline2,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.pleaseLogin.tr(),
                    style: textTheme.bodyText2,
                  ),
                  SizedBox(height: 50),
                  TextField(
                    decoration:
                        InputDecoration(hintText: LocaleKeys.emailAddress.tr()),
                  ),
                  SizedBox(height: 23),
                  TextField(
                    decoration:
                        InputDecoration(hintText: LocaleKeys.password.tr()),
                  ),
                  SizedBox(height: 23),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(LocaleKeys.login.tr()),
                  ),
                  SizedBox(height: 23),
                  FacebookButton(),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          LocaleKeys.newUser.tr(),
                          style: textTheme.bodyText2,
                        ),
                        Text(
                          LocaleKeys.createAccount.tr(),
                          style: textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
