import 'package:desafio/data/repositories/edit_recipe_repository.dart';
import 'package:desafio/modules/edit_recipe/edit_recipe_controller.dart';
import 'package:get/get.dart';

class EditRecipeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(EditRecipeRepository());
    Get.put(EditRecipeController(Get.find()));
  }
}
