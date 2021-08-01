// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en_US = {
  "welcomeBack": "Welcome Back!",
  "pleaseLogin": "Please login to continue.",
  "emailAddress": "Email address",
  "password": "Password",
  "forgotPassowrd": "Forgot password?",
  "login": "Login",
  "facebookLogin": "Continue with Facebook",
  "newUser": "New to Scratch?",
  "createAccount": "Create Account Here",
  "myKitchen": "My Kitchen",
  "settings": "Settings",
  "followers": "Followers",
  "likes": "Likes",
  "recipes": "Recipes",
  "saved": "Saved",
  "following": "Following",
  "backProfile": "Back to My Profile",
  "myRecipes": "My Recipes",
  "addNews": "+ Add New",
  "cook": "Cook",
  "ingredients": "Ingredients",
  "backRecipes": "Back to My Recipes",
  "editRecipe": "Edit Recipe",
  "recipeName": "Recipe Name",
  "gallery": "Gallery",
  "howCook": "How to cook",
  "saveTo": "Save To",
  "saveRecipe": "Save Recipe",
  "postFeed": "Post to Feed",
  "removeFromCookbook": "Remove from Cookbook",
  "savingTime": "Saving Time",
  "nutritionFacts": "Nutrition Facts",
  "tags": "Tags",
  "additionalInfo": "Additional Info"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": en_US};
}
