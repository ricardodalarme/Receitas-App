import 'package:desafio/modules/edit_recipe/edit_recipe_page.dart';
import 'package:desafio/modules/login/login_page.dart';
import 'package:desafio/modules/profile/profile_binding.dart';
import 'package:desafio/modules/profile/profile_page.dart';
import 'package:desafio/modules/recipes/recipes_binding.dart';
import 'package:desafio/modules/recipes/recipes_page.dart';
import 'package:desafio/routes/routes.dart';
import 'package:get/get.dart';

final pages = [
  GetPage(name: Routes.login, page: () => LoginPage()),
  GetPage(
    name: Routes.profile,
    page: () => ProfilePage(),
    binding: ProfileBinding(),
  ),
  GetPage(
    name: Routes.recipes,
    page: () => RecipesPage(),
    binding: RecipesBinding(),
  ),
  GetPage(name: Routes.editRecipe, page: () => EditRecipePage()),
];
