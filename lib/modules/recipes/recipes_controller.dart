import 'package:desafio/data/models/category_model.dart';
import 'package:desafio/data/models/recipe_model.dart';
import 'package:desafio/data/repositories/recipes_repository.dart';
import 'package:get/get.dart';

class RecipesController extends GetxController {
  final RecipesRepository _httpRepository;

  RecipesController(this._httpRepository);

  var categories = <Recipe>[].obs;

  var recipe = Rx<Category?>(null);

  @override
  void onInit() {
    super.onInit();
    getRecipes();
  }

  Future<void> getRecipes() async {
    final categoryId = int.parse(Get.parameters['id']!);

    try {
      categories.value = await _httpRepository.getAllRecipes(categoryId);
    } catch (e) {
      print(e);
    }
  }
}
