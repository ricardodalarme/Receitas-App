import 'package:desafio/data/models/recipe_model.dart';
import 'package:desafio/data/repositories/edit_recipe_repository.dart';
import 'package:get/get.dart';

class EditRecipeController extends GetxController {
  final EditRecipeRepository _httpRepository;

  EditRecipeController(this._httpRepository);

  var recipe = Rx<Recipe?>(null);

  @override
  void onInit() {
    super.onInit();
    getUsers();
  }

  Future<void> getUsers() async {
    final userId = int.parse(Get.parameters['id']!);

    try {
      recipe.value = await _httpRepository.getRecipe(userId);
    } catch (e) {
      print(e);
    }
  }
}
