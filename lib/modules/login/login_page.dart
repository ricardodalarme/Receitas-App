import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/login/components/facebook_button.dart';
import 'package:desafio/modules/login/components/text_input_field.dart';
import 'package:desafio/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(120),
                    ),
                    child: Image.asset(
                      'assets/images/welcome.jpg',
                      height: 315,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
                Positioned(
                  left: 25,
                  top: 100,
                  child: Text(
                    LocaleKeys.welcomeBack.tra,
                    style: textTheme.headline2,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.pleaseLogin.tra,
                    style: textTheme.bodyText2,
                  ),
                  SizedBox(height: 70),
                  TextInputField(hintText: LocaleKeys.emailAddress.tra),
                  SizedBox(height: 30),
                  TextInputField(
                    hintText: LocaleKeys.password.tra,
                    isPassword: true,
                  
                    buttonText: LocaleKeys.forgotPassowrd.tra,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.profile);
                    },
                    child: Text(LocaleKeys.login.tra),
                  ),
                  SizedBox(height: 15),
                  FacebookButton(),
                  SizedBox(height: 40),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          LocaleKeys.newUser.tra,
                          style: textTheme.bodyText2,
                        ),
                        SizedBox(height: 10),
                        Text(
                          LocaleKeys.createAccount.tra,
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
