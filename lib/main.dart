import 'package:desafio/core/config/routes.dart';
import 'package:desafio/core/localization/loader.g.dart';
import 'package:desafio/ui/screens/edit_recipe/edit_recipe_screen.dart';
import 'package:desafio/ui/screens/login/login_screen.dart';
import 'package:desafio/ui/screens/profile/profile_screen.dart';
import 'package:desafio/ui/screens/recipes/recipes_screen.dart';
import 'package:desafio/ui/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

// flutter pub run easy_localization:generate -S assets/translations -f keys -O lib/core/localization -o locale_keys.g.dart
// flutter pub run easy_localization:generate -S assets/translations -s pt-BR.json -O lib/core/localization -o loader.g.dart -f json

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
      getPages: [
        GetPage(name: Routes.login, page: () => LoginScreen()),
        GetPage(name: Routes.profile, page: () => ProfileScreen()),
        GetPage(name: Routes.recipes, page: () => RecipesScreen()),
        GetPage(name: Routes.editRecipe, page: () => EditRecipeScreen()),
      ],
    );
  }
}
