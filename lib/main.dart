import 'package:desafio/core/theme/theme.dart';
import 'package:desafio/localization/loader.g.dart';
import 'package:desafio/routes/pages.dart';
import 'package:desafio/routes/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

// flutter pub run easy_localization:generate -S assets/translations -f keys -O lib/localization -o locale_keys.g.dart
// flutter pub run easy_localization:generate -S assets/translations -s en-US.json -O lib/localization -o loader.g.dart -f json

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [
          Locale('en', 'US'),
        ],
        path: 'translations',
        assetLoader: CodegenLoader(),
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    return GetMaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: makeAppTheme(),
      locale: context.locale,
      initialRoute: Routes.login,
      getPages: pages,
    );
  }
}
