import 'package:flutter/material.dart';

ThemeData makeAppTheme() {
  final primaryColor = Color(0xFF30BE76);
  final secondaryColor = Color(0xFFF8B449);
  final textColor = Color(0xFF030F09);
  final secondaryTextColor = Color(0xFF606060);
  //final hintColor = Color(0xFF606060);
  final dividerColor = Color(0xFFCCCCCC);

  final textTheme = TextTheme(
    headline2: TextStyle(
      fontSize: 32,
      color: textColor,
    ),
    headline5: TextStyle(
      fontSize: 20,
      color: textColor,
      fontWeight: FontWeight.w500,
    ),
    headline6: TextStyle(
      fontSize: 16,
      color: primaryColor,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      color: secondaryTextColor,
    ),
    button: TextStyle(
      fontSize: 18,
      color: textColor,
    ),
  );

  final inputDecorationTheme = InputDecorationTheme(
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: dividerColor)),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: primaryColor)),
      alignLabelWithHint: true);
  final elevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          primary: primaryColor,
          elevation: 0,
          minimumSize: Size(double.infinity, 50)));

  return ThemeData(
    primaryColor: primaryColor,
    highlightColor: secondaryColor,
    accentColor: primaryColor,
    backgroundColor: Colors.white,
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme,
    dividerColor: dividerColor,
    elevatedButtonTheme: elevatedButtonTheme,
  );
}
