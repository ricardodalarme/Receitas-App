import 'package:desafio/data/repositories/recipes_repository.dart';
import 'package:desafio/modules/recipes/recipes_controller.dart';
import 'package:get/get.dart';

class RecipesBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RecipesRepository());
    Get.put(RecipesController(Get.find()));
  }
}
